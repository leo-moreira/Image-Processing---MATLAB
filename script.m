imtest = imread( 'test\img.jpg' );
gray = im2gray(imtest);
[x, y, c] = size(imtest);

for i=1 : x
    for j=1 : y
        pixel = imtest(i, j, 1) * 0.3 + imtest(i, j, 2) * 0.3 + imtest(i, j, 3) * 0.3;
        imtest(i, j, 1) = pixel;
        imtest(i, j, 2) = pixel;
        imtest(i, j, 3) = pixel;
    end
end

imwrite(imtest, "test/imgtest.png");
imwrite(gray, "test/imggray.png");

brightImage = imread("test/imgtest.png");
brightImage = imlocalbrighten(brightImage, 0.2);
imwrite(brightImage, "test/imgbright.png");

        
