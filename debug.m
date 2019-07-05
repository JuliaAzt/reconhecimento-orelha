function nimg = debug()
setDir = 'C:/Users/jhuli/Desktop/Computacao/Quinto/PDI/Artigos2/tp/implementacao/awe/awe/';

 
 imds = imageDatastore(setDir,'IncludeSubfolders', true, 'FileExtensions', '.jpg','LabelSource','foldernames');
 
 [trainingSet,testSet] = splitEachLabel(imds, 0.9,'randomize', 'Include')
 n = size(trainingSet.Files);
 trainingSet2 = imageSet(trainingSet.Files);
 vet = 9*ones(1,99);

 [setImages(1),setImages(2),setImages(3),setImages(4),setImages(5),setImages(6),setImages(7),setImages(8),setImages(9),setImages(10),setImages(11),setImages(12),setImages(13),setImages(14),setImages(15),setImages(16),setImages(17),setImages(18),setImages(19),setImages(20),setImages(21),setImages(22),setImages(23),setImages(24),setImages(25),setImages(26),setImages(27),setImages(28),setImages(29),setImages(30),setImages(31),setImages(32), setImages(33),setImages(34),setImages(35),setImages(36),setImages(37),setImages(38),setImages(39),setImages(40),setImages(41),setImages(42),setImages(43),setImages(44),setImages(45),setImages(46),setImages(47),setImages(48),setImages(49),setImages(50),setImages(51),setImages(52),setImages(53),setImages(54), setImages(55),setImages(56),setImages(57),setImages(58),setImages(59),setImages(60),setImages(61),setImages(62),setImages(63),setImages(64),setImages(65),setImages(66),setImages(67),setImages(68),setImages(69),setImages(70),setImages(71),setImages(72),setImages(73),setImages(74),setImages(75),setImages(76),setImages(77),setImages(78),setImages(79),setImages(80),setImages(81),setImages(82),setImages(83),setImages(84),setImages(85),setImages(86),setImages(87),setImages(88),setImages(89),setImages(90),setImages(91),setImages(92),setImages(93),setImages(94),setImages(95),setImages(96),setImages(97),setImages(98),setImages(99),setImages(100)]= partition(trainingSet2,vet);
 
 k=1;
 for i=1:100
      setImages(i).Description = char(trainingSet.Labels(k)) ;
      k= k+9;
      setImages(i).ImageLocation
 end
 
 