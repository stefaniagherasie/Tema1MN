% reads cluster count and points from input files 
function [NC,points] = read_input_data(file_params, file_points)
	
	% set these values correctly
	NC = 0;
	points = [];

	% TODO read NC
  NC = load(file_params);

	% TODO read points
  format long g;
  points = load("-ascii", file_points);

end

