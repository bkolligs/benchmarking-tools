#include "scope_timer.h"

namespace bench {

ScopeTimer::ScopeTimer(std::ostream& out, const std::string & name) : out_file_{out}, timer_name_{name} {
	start_point_ = std::chrono::high_resolution_clock::now();
}

ScopeTimer::~ScopeTimer() {
	end_point_ = std::chrono::high_resolution_clock::now();
	auto start = std::chrono::time_point_cast<std::chrono::microseconds>(start_point_);
	auto end = std::chrono::time_point_cast<std::chrono::microseconds>(end_point_);
	auto duration = end - start;
	double ms = duration.count() * 0.001;
	out_file_ << "[" << timer_name_ << "] Duration:" << ms << "ms" << std::endl;
	
}
}  // namespace bench