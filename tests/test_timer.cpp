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
        ~ScopeTimerTest() override { outfile.flush(); }

        /*
         * @brief Get the value of the duration in milliseconds from the timer
         * in the form of a double instead of a string
         * @param conversion_factor determines the multiplication by the output
         * time of the timer
         */
        double getDuration(const float conversion_factor = 1E-6) {
            std::string result = outstream.str();
            std::cout << result << std::endl;

            /* Get the location of the actual duration number in the string */
            std::size_t time_start = result.find(':') + 1;
            std::size_t time_end   = result.npos;
            std::string string_duration =
                result.substr(time_start, time_end - time_start);

            /* Convert it to a double, and then to seconds */
            double duration = std::stod(string_duration) * conversion_factor;
            /* Clear the stream */
            outstream.str("");
            return duration;
        }
};

TEST_F(ScopeTimerTest, TestDuration) {
    /* Test a print loop takes a certain amount of time */
    const int print_amount = 1E3;
    {
        bench::ScopeTimer<microseconds> timer(outstream, "TestPrint");
        for (int i = 0; i < print_amount; i++) {
            std::cout << "The current number is: " << i << std::endl;
        }
    }
    double duration_one = getDuration();

    {
        bench::ScopeTimer<microseconds> timer(outstream,
                                              "TestPrintWithoutSTDENDL");
        for (int i = 0; i < print_amount; i++) {
            std::cout << "The current number is: " << i << "\n";
        }
    }
    double duration_two = getDuration();

    {
        bench::ScopeTimer<microseconds> timer(outstream, "TestSleep");
        std::this_thread::sleep_for(1s);
    }

    double duration_three = getDuration();

    /* Check the durations make sense */
    ASSERT_GE(duration_one, duration_two);
    ASSERT_NEAR(duration_three, 1.0, 1E-2);
}

int main(int argc, char** argv) {
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}