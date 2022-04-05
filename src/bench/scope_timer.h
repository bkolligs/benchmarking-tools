#include <chrono>
#include <fstream>
#include <iostream>
#include <string>

/* Specify the level to return time at */
using seconds      = std::chrono::seconds;
using milliseconds = std::chrono::milliseconds;
using microseconds = std::chrono::microseconds;
using nanoseconds  = std::chrono::nanoseconds;

/* Alias the clocks */
using high_res     = std::chrono::high_resolution_clock;
using steady_clock = std::chrono::steady_clock;
using system_clock = std::chrono::system_clock;

namespace bench {

template <typename TUnits  = microseconds,
          typename TClock = system_clock>
class ScopeTimer {
    private:
        /* Since we're using an outstream here we can pass references to the
         * children classes such as: 
         * 1) ofstream to write to a file
         * 2) stringstream to maintain a local copy
         * 3) std::cout/cerr to print directly to console
         */
        std::ostream& out_file_;
        std::string timer_name_;
        std::chrono::time_point<TClock> start_point_;

        std::chrono::time_point<TClock> end_point_;

    public:
        ScopeTimer(std::ostream& out, const std::string& name);
        ScopeTimer(const ScopeTimer& copy);
        ~ScopeTimer();
};

/**
 * Include the class implementations here instead of in a source file *.cpp to
 * tell the compiler to compile different versions of this class for the various
 * clock types
 */
template <typename TUnits, typename TClock>
ScopeTimer<TUnits, TClock>::ScopeTimer(std::ostream& out, const std::string& name)
    : out_file_{out}, timer_name_{name}, start_point_{TClock::now()} {}

template <typename TUnits, typename TClock>
ScopeTimer<TUnits, TClock>::ScopeTimer(const ScopeTimer& copy)
    : out_file_{copy.out_file_},
      timer_name_{copy.timer_name_},
      start_point_{copy.start_point_} {}

template <typename TUnits, typename TClock>
ScopeTimer<TUnits, TClock>::~ScopeTimer() {
    end_point_    = TClock::now();
    auto start    = std::chrono::time_point_cast<TUnits>(start_point_);
    auto end      = std::chrono::time_point_cast<TUnits>(end_point_);
    auto duration = end - start;
    out_file_ << "[" << timer_name_ << "] Duration:" << duration.count() << std::endl;
}

}  // namespace bench
