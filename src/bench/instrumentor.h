#pragma once

/**
 * Singleton instrumention class that can control all the timer instances that
 * exist
 */
class Instrumentor {
    private:
        static Instrumentor instance_;
        Instrumentor(/* args */);
        ~Instrumentor();

    public:
        static Instrumentor& get() { return instance_; }
};

/* Since this is a static member, we need to initialize it using the scope
 * resolution operator */

/* Singleton Instrumentor Instance */
Instrumentor Instrumentor::instance_;