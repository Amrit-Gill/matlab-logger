- **Create a logger object as logger = matlabLogger();**  
- **Define the current script name as scriptName = mfilename;**  
- **Logging: logger.Debug(scriptName, 'This is a Dubug message');**  
- **Use global logger to use logger object in sub functions.**  
- **Finally do not forget to delete logger object using delete(logger) and clear logger;**  
