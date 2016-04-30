classdef ncLogger < handle
    
% ***************************************************************************************************************
%     Description:  ncLogger is a simple logger library created to transfer matlab logs to ivpower. Please find
% 					the output logs at 'IVPOWER_V2\IVPower2\temp\afa-extrules'.
%     Author: NetCeler (http://netceler.com)
%     Input:  None
%     Levels: ERROR, WARN, DEBUG, INFO
%     Use:  Create a logger object as logger = ncLogger();
%			Define the current script name as scriptName = mfilename;
%			Logging: logger.Debug(scriptName, 'This is a Dubug message');
%			Use global logger to use logger object in sub functions.
%			Finally do not forget to delete logger object using delete(logger) and clear logger;
%     
% **************************************************************************************************************
    
    properties
    end
    
    methods
        function Debug(~, scriptName, message)
            fprintf(1, '%s DEBUG: %s - %s \n', char(datetime('now','Format','d-MMM-y HH:mm:ss:SSS')), scriptName, message);
        end
        
        function Info(~, scriptName, message)
            fprintf(1, '%s INFO: %s -  %s\n', char(datetime('now','Format','d-MMM-y HH:mm:ss:SSS')), scriptName, message);
        end
        
        function Warn(~, scriptName, message)
            fprintf(1, '%s WARN: %s -  %s\n', char(datetime('now','Format','d-MMM-y HH:mm:ss:SSS')), scriptName, message);
        end
        
        function Error(~, scriptName, message)
            fprintf(2, '%s ERROR: %s -  %s\n', char(datetime('now','Format','d-MMM-y HH:mm:ss:SSS')), scriptName, message);
        end
    end
    
end


