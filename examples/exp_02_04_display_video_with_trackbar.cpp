// Example 02-04 ： Display local video with trackbar

#include <iostream>
#include <fstream>

#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"

using namespace std;

cv::VideoCapture cap;
int slider_pos = 0;
int cap_run = 1 , cap_donwset = 0;

static void track_bar(int pos, void*){
    cap.set( cv::CAP_PROP_POS_FRAMES, pos);
    if( !cap_donwset ) cap_run = 1;
    cap_donwset = 0;
}

void help(char **argv){
    std::cout << "\n"
	<< "02-04: Adding a trackbar to a basic viewer for moving w/in the video file \n"
	<< argv[0] <<" <path/video>\n"
	<< "For example:\n"
	<< argv[0] << " ../tree.avi\n"
	<< std::endl;
}

int main(int argc, char **argv){

    if( argc != 2 ) {
		help(argv);
		return 0;
	}

    cv::namedWindow( "Example 02-04" , cv::WINDOW_AUTOSIZE);
    cap.open( string(argv[1]) );

    int frame_numbers = (int) cap.get( cv::CAP_PROP_FRAME_COUNT );
    int frame_width = (int) cap.get( cv::CAP_PROP_FRAME_WIDTH );
    int frame_height = (int) cap.get( cv::CAP_PROP_FRAME_HEIGHT );

    cout << "Video has " << frame_numbers << " frames of dimensions("
        << frame_width << ", " << frame_height << ")." << endl;

    cv::createTrackbar(
        "position", 
        "Example 02-04", 
        &slider_pos,
        frame_numbers,
        track_bar
    );

    cv::Mat frame;

    for(;;){
        if(cap_run != 0){
            cap >> frame;
            if( frame.empty() ) break;
            int cur_pos = (int) cap.get( cv::CAP_PROP_POS_FRAMES );
            cap_donwset = 1;
            cv::setTrackbarPos("position", "Example 02-04", cur_pos);
            cv::imshow("Example 02-04", frame);
            cap_run -= 1;
        }
        char c = (char) cv::waitKey(5);
        if( c == 's'){
            cap_run = 1;
            cout << "Single step, run = " << cap_run << endl;
        }
        if( c == 'r' ){
            cap_run = -1;
            cout << "Run mode, run = " <<  cap_run <<endl;
        }
        if( c == 27 ) break;
    }

    return 0;
}