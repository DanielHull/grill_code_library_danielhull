classdef cmg_analysis
    
    % purpose: go through our data and analyze pressure traces
    % this class is designed to analyze a cystometrogram data file in .mat file and produce
    % desired values that will be defined below.
    % This will allow users to input a data file number in the path to be
    % analyzed
    %     all properties below are part of .mat files of CMGs
    %       see dba.GSK.cmg_expt for a
    
    % above generated by the cmg_expt file for each instance
    
    properties
        % dependent on each instance or cmg file
        % these are the properties we want to get out of each instance
        
        expulsion_time % time characterized by the appearance of high freq osc.
        amplitude_trigger_contraction % amplitude of contraction in voiding cycle
        amplitude_intraluminal_pressure %amplitude of the high freq osc.
        maximal_amplitude_micturition_contraction %amplitude from resting pressure to maximal pressure
        inter_contraction_intervals % time lag among RP and PT
        total_contraction_time % Time lag between PT and RP
        pressure_threshold %pressure value recorded just before micturition
        pressure_intervals %needed to generate the pressure threshold
        resting_pressure  %lowest intraluminal pressure after micturition
        expt_id % this uniquely indentifies the experiment
        h %reference to cmg expt instance
        pres_data
        cell_data
        cell_data2
    end
    
    
    methods
        
        
        % Function to call the data output of cmg_expt and populating
        % properties
        function obj = cmg_analysis(expt_id)
            obj.expt_id= expt_id;
            
            %Calling class methods does not require the package name because you have an instance of the class:
            obj.h = dba.GSK.cmg_expt(expt_id);
            
            obj.pres_data= obj.h.getData('Pres');
        end
        
%         function [value_matrix]= get.cell_data(obj)
%             for k= 1:length(obj.h.bladder_contraction_starts')
%                 for r=1:length(obj.h.bladder_contraction_starts(k))
%                     value_matrix= obj.h.bladder_contraction_starts(k,r) ;
%                 end
%             end
%         end
%         
%         % I tried to use cell2mat as well in the command window but it
%         % generated an error. I appear to be getting some of this data but
%         % not more than two data points, so I think I'm close
%         function [value_matrix]= get.cell_data2(obj)
%             for k=1:length(obj.h.bladder_contraction_ends') % transpose the array of cells move through one by one
%                 for r= 1:length(obj.h.bladder_contraction_ends(k)) % move through each cell
%                     value_matrix= obj.h.bladder_contraction_ends(k,r);
%                 end
%             end
%         end
%  
%         function value= get.inter_contraction_intervals(obj)
%             value= obj.cell_data-obj.h.start_pump;
%         end
%         
%         function value= get.total_contraction_time(obj)
%             for k= 1:length(obj.h.bladder_contraction_starts)
%                 value= obj.h.cell_data2(k)-obj.h.cell_data(k);
%             end
%         end
%     
%         
%         function value= get.resting_pressure(obj)
%             for k= 1:length(obj.h.start_pump) % I believe the logic here is correct
%                 value= obj.pres_data.d(obj.h.start_pump(k)); % I want the kth entry of the pressure(! unsure how to get the pressure entry specifically) of sci.time_series.data
%             end
%         end
%     end
end