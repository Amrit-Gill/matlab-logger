% If you want to use logger in more than single matlab fuction, declare it as a global variable
% global logger
logger = matlab-logger();
scriptName = mfileName;

yoxInfo = 'I'm a informative string';
logger.Info(scriptName, yoxInfo);

yoxInfoVar = 44.2;
logger.Info(scriptName, sprintf('The value of informative Variable is %d',yoxInfoVar));

yoxWarn = 'I'm a warning string';
logger.Warn(scriptName, yoxWarn);

yoxDebug = 'I'm a debug string';
logger.Debug(scriptName, yoxDebug);

yoxError = 'I'm a Error string';
logger.Error(scriptName, yoxError);

delete(logger);
clear logger;

