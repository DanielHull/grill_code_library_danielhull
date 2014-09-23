%  Daniel Hull 
%  September 23rd, 2014

% Please note this code is full of errors and needs review and further
% work. It is basically a zero draft
function link = editor(function_pathway)
   
%  Matlab project that...
%  1) provides an edit link
%  2) adds on a link for a function prototype
%  3) adds an indicator if the method is static (s)
%  4) retrieve the line where the function is defined
%  5) utilize a profiler that can make it faster.

% some sort of if then depending on what was selected
switch method
    case 'static'
        printf('.: (s)') % print these links if case is static right now the function doesn't know what static means...
        if ':' % Not sure how to reference this as a link
            edit function_pathway
        elseif '.'
            % some sort of link
        end
    otherwise
        printf('.:') % print these links if the case method is 'not' static
        if '.'
            
        elseif ':'
            edit function_pathway
        end       
end


% opens up the viewer GUI for the user to monitor the effectiveness of
% running their function

% needed: a command that runs the input function for this profile viewer to
% show the recorded results of running the code line by line

profile on
profile viewer

end