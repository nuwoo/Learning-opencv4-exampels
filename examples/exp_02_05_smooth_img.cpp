// Example 2-5. Loading and then smoothing an image before it is displayed on the screen

#include "opencv2/opencv.hpp"

void help(char** argv ) {
	std::cout << "\n"
	<< "2-05: load and smooth an image before displaying \n"
	<< argv[0] <<" <path/video>\n"
	<< "For example:\n"
	<< argv[0] << " ../tree.avi\n"
	<< std::endl;
}

int main(int argc, char **argv){
    if( argc != 2){
        help(argv);
        return 0;
    }

    cv::Mat img = cv::imread(argv[1], -1);

    cv::namedWindow( "Example 02-05-in", cv::WINDOW_AUTOSIZE );
    cv::namedWindow( "Example 02-05-out", cv::WINDOW_AUTOSIZE );

    cv::imshow( "Example 02-05-in", img );
    
    cv::Mat res;
    
    cv::GaussianBlur(img, res, cv::Size(5,5), 3, 3);
    
    cv::imshow( "Example 02-05-out", res);

    cv::waitKey(0);

    return 0;
}