URL = 'http://seanlahman.com/files/database/lahman-csv_2014-02-14.zip'
filename = './data/lahman-csv_2014-02-14.zip'
theZip = download.file(URL, filename)
unzip(filename, exdir='./data/')
