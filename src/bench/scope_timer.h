#include <chrono>
#include <fstream>
#include <iostream>
#include <string>

namespace bench {

class ScopeTimer {
    private:
        /* Since we're using an outstream here we can base references to the
         * children classes such as ofstream to write to a file, or a
         * stringstream to maintain a local copy*/
        std::ostream& out_file_;
        std::string timer_name_;
        std::chrono::time_point<std::chrono::high_resolution_clock>
            start_point_;
        std::chrono::time_point<std::chrono::high_resolution_clock> end_point_;

    public:
        ScopeTimer(std::ostream& out, const std::string& name);
        ~ScopeTimer();
};

}  // namespace bench
