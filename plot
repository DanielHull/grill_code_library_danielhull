%% plot.m a user class to plot...really experimenting with packages and classes to understand how they work

classdef plot
    % This code is designed to simplify the rewritability of matlab
    % plotting features. 
    % Doing This= Save time
    % A basic one figure plot with a time x-axis
    % a basic black solid line plot
    properties
        time
        dependent_value
    end
    methods
        function obj = input(time, dependent_value, varargin)
            obj.time = time; 
            obj.depenedent_value = dependent_value;
    
    end
    
    function plotter = plot(obj.time, obj.dependent_value)
        
        plot(obj.time, obj.dependent_value, 'k-')
        
        % look at Jim's provess varagin for any other variables
        xlabel('time')
        ylabel('dependent_value function')
        title('plot of time vs. dependent_value [DAH]')
    
    end
    end
end   
