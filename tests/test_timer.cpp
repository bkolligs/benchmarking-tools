#include "gtest/gtest.h"
#include "scope_timer.h"
#include <thread>

using namespace std::chrono_literals;

class ScopeTimerTest: public ::testing::Test {
    protected:
        std::ofstream outfile;
        std::stringstream outstream;
    public: 
        ScopeTimerTest() : outfile(LOG_DIR "/ScopeTimerTest.txt", std::ofstream::out) { }
        ~ScopeTimerTest(){
            outfile.flush();
        }

        double getDuration() {

        }
};

TEST_F(ScopeTimerTest, TestDuration){
    /* Test a print loop takes a certain amount of time */
    int print_amount = 1E3;
    {
        bench::ScopeTimer timer(outfile, "TestPrint");
        for (int i= 0; i < print_amount; i++) {
            std::cout << "The current number is: " << i << std::endl;
        }
    }

    {
        bench::ScopeTimer timer(outfile, "TestPrintWithoutSTDENDL");
        for (int i= 0; i < print_amount; i++) {
            std::cout << "The current number is: " << i << "\n";
        }
    }

    {
        bench::ScopeTimer timer(outfile, "TestSleep");
        std::this_thread::sleep_for(1s);
    }
    ASSERT_TRUE(false);
}

int main(int argc, char** argv) {
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}