classdef (Enumeration) Version < handle
    % VERSION class to represent a version of matlab

    enumeration
        % currently running version
        CURRENT()
        % R2023B
        R2023B('R2023B', 50, 23.2,  23.2)
        % R2023A
        R2023A('R2023A', 49, 9.14,  10.7)
    end

    properties (SetAccess = private)
        % name of matlab version
        name
        % number of matlab version
        number
        % version number of matlab version
        matlabversion
        % version number of simulink version
        simulinkversion
    end

    methods

        function [isgreateroreq] = ge(this, that)
            % GE return, if version is greater or equal than given version
            %   Input:
            %       this:           instance
            %       that:           version to compare to, if none is given, current version is used for comparison
            %   Output:
            %       isgreateroreq:  indicator, if version is greater than or equal the given version or current version, if no version to compare to is supplied
            if nargin <= 1
                that = matlab.Version.CURRENT();
            end
            isgreateroreq = ~this.less(that);
        end

    end

    methods (Access = private)

        function [this] = Version(name, number, matlabversion, simulinkversion)
            % VERSION create new version object
            %   Input:
            %       name:               name of matlab release
            %       number:             number of matlab release
            %       matlabversion:      version number of matlab release
            %       simulinkversion:    version number of simulink release
            if nargin == 0
                version = ver;
                names = {version.Name};
                matlab = strcmpi(names, 'MATLAB');
                simulink = strcmpi(names, 'SIMULINK');
                if ~any(matlab) || ~any(simulink)
                    error('matlab:version', 'Error in parsing version strings for current matlab version.');
                end
                this.name = upper(strrep(strrep(version(matlab).Release, '(', ''), ')', ''));
                this.number = 0;
                this.matlabversion = str2double(version(matlab).Version);
                this.simulinkversion = str2double(version(simulink).Version);
            else
                this.name = name;
                this.number = number;
                this.matlabversion = matlabversion;
                this.simulinkversion = simulinkversion;
            end
        end

    end
end
