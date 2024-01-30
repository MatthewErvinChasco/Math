function [yn,n] = plog(x,varargin)
    yn = sum(factor(x)); %prime log
    n = 0; %steps to end
    
    if (numel(varargin) > 0) && strcmp('converge',varargin{1})
        d = 1;
        while d ~= 0
            y = sum(factor(yn));
            yn = sum(factor(y));
            n = n + 1;
            d = y - yn;
        end
    end