#include <iostream>
#include <ctime>
#include "spdlog/spdlog.h"
#include "spdlog/sinks/basic_file_sink.h"
#include "spdlog/sinks/rotating_file_sink.h"

void simple_test() {
    SPDLOG_INFO("日志格式测试!");
	spdlog::info("default print level {}!",spdlog::get_level());
	spdlog::set_level(spdlog::level::trace);
    spdlog::trace("trace info!");
    spdlog::debug("debug info!");
    spdlog::info("Hello {}!", "World");
    spdlog::warn("warn info!");
    spdlog::error("error info {}!", std::time(nullptr));
    spdlog::info("中文日志测试！");
}

void basic_log() {
	try
	{
        auto my_logger = spdlog::basic_logger_mt("basic_logger", "logs/basic.log");
		my_logger->trace("trace log");
		my_logger->debug("debug log");
		my_logger->info("info log");
		my_logger->warn("warn log");
		my_logger->error("error log");
    }
	catch(const spdlog::spdlog_ex &ex)
	{
        std::cout << "Log initialization failed: " << ex.what() << std::endl;
    }
	
}

void rotating_log() {
	try
	{
        auto file_logger = spdlog::rotating_logger_mt("rotating_logger", "logs/totating", 1024 * 5, 3);
        for (int i = 0; i < 5120; ++i) {
            file_logger->info("info log!");
        }
        file_logger->flush();
    }
    catch (const std::exception& e) {
        std::cerr << e.what() << '\n';
    }
}

int main(int argc, char* argv[])
{
    simple_test();
    // basic_log();
    // rotating_log();
    return 0;
}