% MATLAB script to calculate CGPA based on course scores

% Number of courses
n = input('Enter the number of courses: ');

% Initialize arrays to hold credit units and scores
credit_units = zeros(1, n);
scores = zeros(1, n);
grade_points = zeros(1, n);

% Input course details, including course code, credit units, and score
for i = 1:n
    course_code = input(['Enter the course code for course ', num2str(i), ': '], 's');
    credit_units(i) = input(['Enter course units for ', course_code, ': ']);
    scores(i) = input(['Enter your score for ', course_code, ': ']);

    % Calculate grade point based on score
    if scores(i) >= 70
        grade_points(i) = 5;  % A
    elseif scores(i) >= 60
        grade_points(i) = 4;  % B
    elseif scores(i) >= 50
        grade_points(i) = 3;  % C
    elseif scores(i) >= 45
        grade_points(i) = 2;  % D
    elseif scores(i) >= 40
        grade_points(i) = 1;  % E
    else
        grade_points(i) = 0;  % F
    end
end

% Calculate CGPA
total_credit_units = sum(credit_units);
weighted_sum = sum(grade_points .* credit_units);
cgpa = weighted_sum / total_credit_units;

% Display CGPA
fprintf('Your CGPA is: %.2f\n', cgpa);
