// Example 22-1. Detecting and drawing faces

#include <iostream>
#include <vector>
#include <cstdlib>
#include <fstream>

#include "opencv2/opencv.hpp"
#include "opencv2/objdetect/objdetect.hpp"
#include "opencv2/core/core.hpp"
#include "opencv2/highgui/highgui.hpp"

using std::cout;
using std::string;
using std::vector;
using std::cerr;

void help(char **argv){
    cerr << "\n"
    << "Error : Wrong number of arguments. \n"
    << "Use : \n" << argv[0] << " <path/img_file> <path/xml_classifier_file> \n"\
    << "Example to run this demo : \n\n"
    << argv[0] << "../faces.png ../haarcascade_frontalface_alt.xml \n"
    << std::endl;

    exit(1);
}

void draw_detect(
        cv::Mat img,
        cv::Ptr <cv::CascadeClassifier> classifier,
        double scale = 1.3
    ){
    enum{BLUE, GREEN, CYAN, AQUA};
    static cv::Scalar colours[] = {
        cv::Scalar(0, 0, 255),
        cv::Scalar(0, 128, 255),
        cv::Scalar(0, 255, 255),
        cv::Scalar(0, 255, 0)
    };

    cv::Mat gray(img.size(), CV_8UC1);
    cv::Mat small_img(cvSize(cvRound(img.cols / scale);
    cv::cvtColor( img, gray, cv::COLOR_BGR2GRAY );
    cv::resize( gray, small_img, small_img.size(), 0.0, 0.0, cv::INTER_LINEAR);
    cv::equalizeHist( small_img, small_img);

    vector<cv::Rect> objects;
    classifier ->detectMultiScale(
        small_img,
        objects,
        1.1,
        3,
        cvHaarDetectObjects,
        cv::Size(30, 30)
    );

    int i = 0;
    for( vector<cv::Rect>::iterator r = objects.begin();
            r != objects.end(); r++ , i++){
        cv::Rect r_;
    }
}

int main(int argc, char **argv){
    if( argc < 3 ){
        help(argv);
        return 0;
    }

    string img_file = (string) argv[1];
    cv::Mat img = cv::imread(img_file);
    string detect_file = (string) argv[2];
    cv::Ptr <cv::CascadeClassifier> cascade( new cv::CascadeClassifier(detect_file));
    draw_detect(img, cascade);
    cv::imshow("Result", img);
    cv::waitKey(0);
    
    return 0;
}