// Example 02-03 : A simple OpenCV program for playing a video file from disk

#include <iostream>

#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"

using namespace std;

void help(char **argv){
    cout << "\n"
    << "example 02-03 : play a local video in a window \n"
    << argv[0] << " path/to/video \n"
    << "For example \n"
    << argv[0] << "./tree.avi \n"
    << endl;
}

int main(int argc, char **argv){
    if(argc != 2){
        help(argv);
        return 0;
    }

    cv::namedWindow("Example 02-03", 0);
    cv::VideoCapture cap;

    cap.open( string(argv[1]) );
    cout << "Open file : " << argv[1] << "\n" << endl;
    cv::Mat frame;

    for(;;){
        cap >> frame;
        if( frame.empty()) break; // run out of video file
        cv::imshow( "Example 02-03", frame);

        if( cv::waitKey(33) >= 0 ) break;
    }
}