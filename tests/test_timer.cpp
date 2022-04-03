#include <thread>
#include "gtest/gtest.h"
#include "scope_timer.h"

using namespace std::chrono_literals;

class ScopeTimerTest : public ::testing::Test {
    protected:
        std::ofstream outfile;
        std::stringstream outstream;

    public:
        ScopeTimerTest()
            : outfile(LOG_DIR "/ScopeTimerTest.txt", std::ofstream::out) {}
        ~ScopeTimerTest() { outfile.flush(); }

        /*
         * Get the value of the duration in milliseconds from the timer in the
         * form of a double instead of a string
         */
        double getDuration() {
            std::string result = outstream.str();

            /* Get the location of the actual duration number in the string */
            std::size_t time_start = result.find(':') + 1;
            std::size_t time_end   = result.find("ms");
            std::string string_duration =
                result.substr(time_start, time_end - time_start);

            /* Convert it to a double */
            double duration = std::stod(string_duration);
            /* Clear the stream */
            outstream.str("");
            return duration;
        }
};

TEST_F(ScopeTimerTest, TestDuration) {
    /* Test a print loop takes a certain amount of time */
    int print_amount = 1E3;
    {
        bench::ScopeTimer timer(outstream, "TestPrint");
        for (int i = 0; i < print_amount; i++) {
            std::cout << "The current number is: " << i << std::endl;
        }
    }
    double duration_one = getDuration();

    {
        bench::ScopeTimer timer(outstream, "TestPrintWithoutSTDENDL");
        for (int i = 0; i < print_amount; i++) {
            std::cout << "The current number is: " << i << "\n";
        }
    }
    double duration_two = getDuration();

    {
        bench::ScopeTimer timer(outstream, "TestSleep");
        std::this_thread::sleep_for(1s);
    }

    double duration_three = getDuration();

    /* Check the durations make sense */
    ASSERT_GE(duration_one, duration_two);
    ASSERT_GE (duration_three,1.0);
}

int main(int argc, char** argv) {
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}