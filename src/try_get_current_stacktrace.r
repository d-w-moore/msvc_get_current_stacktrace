test() {
    *rc = msiget_current_stacktrace( *stktrace )
    if (*rc == 0) {
        writeLine("stdout", "----- Stacktrace OUTPUT from Microservice (BEGIN) ----- ")
        writeLine("stdout", *stktrace )
        writeLine("stdout", "----- Stacktrace OUTPUT from Microservice ( END ) ----- ")
    }
    else {
        writeLine("stderr", "error code [*rc] returned from msiget_current_stacktrace")
    }
}

INPUT  null
OUTPUT ruleExecOut
