% If you want to use logger in more than single matlab fuction, declare it as a global variable
% global logger
logger = matlabLogger();
scriptName = mfilename;

yoxInfo = 'I am an informative string';
logger.Info(scriptName, yoxInfo);

yoxInfoVar = 44.2;
logger.Info(scriptName, sprintf('The value of informative Variable is %d',yoxInfoVar));

yoxWarn = 'I am a warning string';
logger.Warn(scriptName, yoxWarn);

yoxDebug = 'I am a debug string';
logger.Debug(scriptName, yoxDebug);

yoxError = 'I am an Error string';
logger.Error(scriptName, yoxError);

delete(logger);
clear logger;

