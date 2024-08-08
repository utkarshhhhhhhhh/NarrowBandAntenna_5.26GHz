%%Create Variables
r = 2.425;
l = 4.25;
rt = 1.75;
wg = 13;
lg = 10;
l1 = 4.7;
gbl = 7;
sp = 1;
gbw = 6.75;
xp = 2.4;
cl = 4.5;
yp = 0;
ypp = 0;

%%Create pcbStack object
pcbobj = pcbStack;

%%Create board shape
    %Creating BoardShape metal layer.
        %Creating Rectangle3 shape.
        Rectangle3 = antenna.Rectangle;
        Rectangle3.Name = "Rectangle3";
        Rectangle3.Center = [0 -0.0015];
        Rectangle3.Length = (lg).*0.001;
        Rectangle3.Width = (wg-2.5-0.5).*0.001;
        Rectangle3 = rotate(Rectangle3,0,[Rectangle3.Center,-1],[Rectangle3.Center,1]);
    BoardShape = Rectangle3;
pcbobj.BoardShape = BoardShape;

%%Create Stackup
    %Creating MetalLayer2 metal layer.
        %Creating Circle1 shape.
        Circle1 = antenna.Circle;
        Circle1.Name = "Circle1";
        Circle1.Radius = (r).*0.001;
        Circle1.Center = ([0,-wg/2+l+r-0.2]).*0.001;
        Circle1 = rotate(Circle1,0,[Circle1.Center,-1],[Circle1.Center,1]);
            %Creating Rectangle3 shape.
            Rectangle3 = antenna.Rectangle;
            Rectangle3.Name = "Rectangle3";
            Rectangle3.Center = ([0,-wg/2+l/2]).*0.001;
            Rectangle3.Length = 0.0008;
            Rectangle3.Width = (l).*0.001;
            Rectangle3 = rotate(Rectangle3,0,[Rectangle3.Center,-1],[Rectangle3.Center,1]);
        Circle1 = Circle1 + Rectangle3;%Add
            %Creating Circle4 shape.
            Circle4 = antenna.Circle;
            Circle4.Name = "Circle4";
            Circle4.Radius = 0.001125;
            Circle4.Center = ([xp+0.1,-2.5+yp]).*0.001;
            Circle4 = rotate(Circle4,0,[Circle4.Center,-1],[Circle4.Center,1]);
        Circle1 = Circle1 + Circle4;%Add
            %Creating Circle5 shape.
            Circle5 = antenna.Circle;
            Circle5.Name = "Circle5";
            Circle5.Radius = 0.001125;
            Circle5.Center = ([-xp-0.1,-2.5+yp]).*0.001;
            Circle5 = rotate(Circle5,0,[Circle5.Center,-1],[Circle5.Center,1]);
        Circle1 = Circle1 + Circle5;%Add
            %Creating Circle8 shape.
            Circle8 = antenna.Circle;
            Circle8.Name = "Circle8";
            Circle8.Radius = 0.001;
            Circle8.Center = [0 0.002];
            Circle8 = rotate(Circle8,0,[Circle8.Center,-1],[Circle8.Center,1]);
        Circle1 = Circle1 - Circle8;%Subtract
            %Creating Circle10 shape.
            Circle10 = antenna.Circle;
            Circle10.Name = "Circle10";
            Circle10.Radius = 0.00075;
            Circle10.Center = [0.002 0.0005];
            Circle10 = rotate(Circle10,0,[Circle10.Center,-1],[Circle10.Center,1]);
        Circle1 = Circle1 - Circle10;%Subtract
            %Creating Circle9 shape.
            Circle9 = antenna.Circle;
            Circle9.Name = "Circle9";
            Circle9.Radius = 0.00075;
            Circle9.Center = [-0.002 0.0005];
            Circle9 = rotate(Circle9,0,[Circle9.Center,-1],[Circle9.Center,1]);
        Circle1 = Circle1 - Circle9;%Subtract
            %Creating Rectangle12 shape.
            Rectangle12 = antenna.Rectangle;
            Rectangle12.Name = "Rectangle12";
            Rectangle12.Center = [0 -0.00175];
            Rectangle12.Length = 0.004;
            Rectangle12.Width = 0.0015;
            Rectangle12 = rotate(Rectangle12,0,[Rectangle12.Center,-1],[Rectangle12.Center,1]);
        Circle1 = Circle1 + Rectangle12;%Add
            %Creating Circle6 shape.
            Circle6 = antenna.Circle;
            Circle6.Name = "Circle6";
            Circle6.Radius = 0.00095;
            Circle6.Center = ([-xp-0.5,-4.4+yp]).*0.001;
            Circle6 = rotate(Circle6,0,[Circle6.Center,-1],[Circle6.Center,1]);
        Circle1 = Circle1 + Circle6;%Add
            %Creating Circle7 shape.
            Circle7 = antenna.Circle;
            Circle7.Name = "Circle7";
            Circle7.Radius = 0.00095;
            Circle7.Center = ([xp+0.5,-4.4+yp]).*0.001;
            Circle7 = rotate(Circle7,0,[Circle7.Center,-1],[Circle7.Center,1]);
        Circle1 = Circle1 + Circle7;%Add
            %Creating Rectangle17 shape.
            Rectangle17 = antenna.Rectangle;
            Rectangle17.Name = "Rectangle17";
            Rectangle17.Center = [-0.004 0.00275];
            Rectangle17.Length = 0.002;
            Rectangle17.Width = 0.0015;
            Rectangle17 = rotate(Rectangle17,0,[Rectangle17.Center,-1],[Rectangle17.Center,1]);
        Circle1 = Circle1 + Rectangle17;%Add
            %Creating Rectangle18 shape.
            Rectangle18 = antenna.Rectangle;
            Rectangle18.Name = "Rectangle18";
            Rectangle18.Center = [0.004 0.00275];
            Rectangle18.Length = 0.002;
            Rectangle18.Width = 0.0015;
            Rectangle18 = rotate(Rectangle18,0,[Rectangle18.Center,-1],[Rectangle18.Center,1]);
        Circle1 = Circle1 + Rectangle18;%Add
            %Creating Rectangle19 shape.
            Rectangle19 = antenna.Rectangle;
            Rectangle19.Name = "Rectangle19";
            Rectangle19.Center = [0 0.003375];
            Rectangle19.Length = 0.006;
            Rectangle19.Width = 0.00025;
            Rectangle19 = rotate(Rectangle19,0,[Rectangle19.Center,-1],[Rectangle19.Center,1]);
        Circle1 = Circle1 + Rectangle19;%Add
            %Creating Rectangle20 shape.
            Rectangle20 = antenna.Rectangle;
            Rectangle20.Name = "Rectangle20";
            Rectangle20.Center = [0 0.00175];
            Rectangle20.Length = 0.005;
            Rectangle20.Width = 0.0015;
            Rectangle20 = rotate(Rectangle20,0,[Rectangle20.Center,-1],[Rectangle20.Center,1]);
        Circle1 = Circle1 - Rectangle20;%Subtract
            %Creating Rectangle21 shape.
            Rectangle21 = antenna.Rectangle;
            Rectangle21.Name = "Rectangle21";
            Rectangle21.Center = [0 0.0015];
            Rectangle21.Length = 0.001;
            Rectangle21.Width = 0.001;
            Rectangle21 = rotate(Rectangle21,0,[Rectangle21.Center,-1],[Rectangle21.Center,1]);
        Circle1 = Circle1 + Rectangle21;%Add
            %Creating Rectangle24 shape.
            Rectangle24 = antenna.Rectangle;
            Rectangle24.Name = "Rectangle24";
            Rectangle24.Center = [0.002 0.0005];
            Rectangle24.Length = 0.002;
            Rectangle24.Width = 0.002;
            Rectangle24 = rotate(Rectangle24,0,[Rectangle24.Center,-1],[Rectangle24.Center,1]);
        Circle1 = Circle1 - Rectangle24;%Subtract
            %Creating Rectangle23 shape.
            Rectangle23 = antenna.Rectangle;
            Rectangle23.Name = "Rectangle23";
            Rectangle23.Center = [-0.002 0.0005];
            Rectangle23.Length = 0.002;
            Rectangle23.Width = 0.002;
            Rectangle23 = rotate(Rectangle23,0,[Rectangle23.Center,-1],[Rectangle23.Center,1]);
        Circle1 = Circle1 - Rectangle23;%Subtract
            %Creating Circle9 shape.
            Circle9 = antenna.Circle;
            Circle9.Name = "Circle9";
            Circle9.Radius = 0.00125;
            Circle9.Center = [0 -0.0065];
            Circle9 = rotate(Circle9,0,[Circle9.Center,-1],[Circle9.Center,1]);
        Circle1 = Circle1 + Circle9;%Add
            %Creating Rectangle24 shape.
            Rectangle24 = antenna.Rectangle;
            Rectangle24.Name = "Rectangle24";
            Rectangle24.Center = [0 -0.007];
            Rectangle24.Length = 0.008;
            Rectangle24.Width = 0.001;
            Rectangle24 = rotate(Rectangle24,0,[Rectangle24.Center,-1],[Rectangle24.Center,1]);
        Circle1 = Circle1 - Rectangle24;%Subtract
            %Creating Rectangle26 shape.
            Rectangle26 = antenna.Rectangle;
            Rectangle26.Name = "Rectangle26";
            Rectangle26.Center = [0.003 -0.0055];
            Rectangle26.Length = 0.0025;
            Rectangle26.Width = 0.0011;
            Rectangle26 = rotate(Rectangle26,0,[Rectangle26.Center,-1],[Rectangle26.Center,1]);
        Circle1 = Circle1 - Rectangle26;%Subtract
            %Creating Rectangle25 shape.
            Rectangle25 = antenna.Rectangle;
            Rectangle25.Name = "Rectangle25";
            Rectangle25.Center = [-0.003 -0.0055];
            Rectangle25.Length = 0.0025;
            Rectangle25.Width = 0.0011;
            Rectangle25 = rotate(Rectangle25,0,[Rectangle25.Center,-1],[Rectangle25.Center,1]);
        Circle1 = Circle1 - Rectangle25;%Subtract
            %Creating Rectangle27 shape.
            Rectangle27 = antenna.Rectangle;
            Rectangle27.Name = "Rectangle27";
            Rectangle27.Center = [0 -0.0025];
            Rectangle27.Length = 0.003;
            Rectangle27.Width = 0.000125;
            Rectangle27 = rotate(Rectangle27,0,[Rectangle27.Center,-1],[Rectangle27.Center,1]);
        Circle1 = Circle1 + Rectangle27;%Add
            %Creating Rectangle28 shape.
            Rectangle28 = antenna.Rectangle;
            Rectangle28.Name = "Rectangle28";
            Rectangle28.Center = [0 -0.002625];
            Rectangle28.Length = 0.003;
            Rectangle28.Width = 0.00075;
            Rectangle28 = rotate(Rectangle28,0,[Rectangle28.Center,-1],[Rectangle28.Center,1]);
        Circle1 = Circle1 + Rectangle28;%Add
            %Creating Rectangle29 shape.
            Rectangle29 = antenna.Rectangle;
            Rectangle29.Name = "Rectangle29";
            Rectangle29.Center = [-0.001 -0.00305];
            Rectangle29.Length = 0.0015;
            Rectangle29.Width = 0.00045;
            Rectangle29 = rotate(Rectangle29,0,[Rectangle29.Center,-1],[Rectangle29.Center,1]);
        Circle1 = Circle1 + Rectangle29;%Add
            %Creating Rectangle30 shape.
            Rectangle30 = antenna.Rectangle;
            Rectangle30.Name = "Rectangle30";
            Rectangle30.Center = [0.001 -0.00305];
            Rectangle30.Length = 0.0015;
            Rectangle30.Width = 0.00045;
            Rectangle30 = rotate(Rectangle30,0,[Rectangle30.Center,-1],[Rectangle30.Center,1]);
        Circle1 = Circle1 + Rectangle30;%Add
            %Creating Rectangle33 shape.
            Rectangle33 = antenna.Rectangle;
            Rectangle33.Name = "Rectangle33";
            Rectangle33.Center = [5e-05 -0.0033];
            Rectangle33.Length = 0.004;
            Rectangle33.Width = 5e-05;
            Rectangle33 = rotate(Rectangle33,0,[Rectangle33.Center,-1],[Rectangle33.Center,1]);
        Circle1 = Circle1 + Rectangle33;%Add
            %Creating Rectangle34 shape.
            Rectangle34 = antenna.Rectangle;
            Rectangle34.Name = "Rectangle34";
            Rectangle34.Center = [0 -0.00775];
            Rectangle34.Length = 0.005;
            Rectangle34.Width = 0.0025;
            Rectangle34 = rotate(Rectangle34,0,[Rectangle34.Center,-1],[Rectangle34.Center,1]);
        Circle1 = Circle1 - Rectangle34;%Subtract
            %Creating Rectangle35 shape.
            Rectangle35 = antenna.Rectangle;
            Rectangle35.Name = "Rectangle35";
            Rectangle35.Center = [0 0.00315];
            Rectangle35.Length = 0.006;
            Rectangle35.Width = 0.00025;
            Rectangle35 = rotate(Rectangle35,0,[Rectangle35.Center,-1],[Rectangle35.Center,1]);
        Circle1 = Circle1 + Rectangle35;%Add
    MetalLayer2 = Circle1;
    %Creating DielectricLayer1 dielectric layer.
    DielectricLayer1 = dielectric("Name",'FR4',"EpsilonR",4.8,"LossTangent",0.026,"Thickness",0.0016);
    %Creating MetalLayer1 metal layer.
        %Creating Rectangle2 shape.
        Rectangle2 = antenna.Rectangle;
        Rectangle2.Name = "Rectangle2";
        Rectangle2.Center = [0 -0.0015];
        Rectangle2.Length = (lg).*0.001;
        Rectangle2.Width = (wg-2.5-0.5).*0.001;
        Rectangle2 = rotate(Rectangle2,0,[Rectangle2.Center,-1],[Rectangle2.Center,1]);
            %Creating Rectangle8 shape.
            Rectangle8 = antenna.Rectangle;
            Rectangle8.Name = "Rectangle8";
            Rectangle8.Center = ([-lg/2+cl/2,-2.5-ypp]).*0.001;
            Rectangle8.Length = (cl).*0.001;
            Rectangle8.Width = 0.0015;
            Rectangle8 = rotate(Rectangle8,0,[Rectangle8.Center,-1],[Rectangle8.Center,1]);
        Rectangle2 = Rectangle2 - Rectangle8;%Subtract
            %Creating Rectangle9 shape.
            Rectangle9 = antenna.Rectangle;
            Rectangle9.Name = "Rectangle9";
            Rectangle9.Center = ([lg/2-cl/2,-2.5-ypp]).*0.001;
            Rectangle9.Length = (cl).*0.001;
            Rectangle9.Width = 0.0015;
            Rectangle9 = rotate(Rectangle9,0,[Rectangle9.Center,-1],[Rectangle9.Center,1]);
        Rectangle2 = Rectangle2 - Rectangle9;%Subtract
            %Creating Rectangle10 shape.
            Rectangle10 = antenna.Rectangle;
            Rectangle10.Name = "Rectangle10";
            Rectangle10.Center = ([lg/2-cl/2,-2.5+1.5+1-ypp]).*0.001;
            Rectangle10.Length = (cl).*0.001;
            Rectangle10.Width = 0.0015;
            Rectangle10 = rotate(Rectangle10,0,[Rectangle10.Center,-1],[Rectangle10.Center,1]);
        Rectangle2 = Rectangle2 - Rectangle10;%Subtract
            %Creating Rectangle11 shape.
            Rectangle11 = antenna.Rectangle;
            Rectangle11.Name = "Rectangle11";
            Rectangle11.Center = ([-lg/2+cl/2,-2.5+1.5+1-ypp]).*0.001;
            Rectangle11.Length = (cl).*0.001;
            Rectangle11.Width = 0.0015;
            Rectangle11 = rotate(Rectangle11,0,[Rectangle11.Center,-1],[Rectangle11.Center,1]);
        Rectangle2 = Rectangle2 - Rectangle11;%Subtract
            %Creating Rectangle8 shape.
            Rectangle8 = antenna.Rectangle;
            Rectangle8.Name = "Rectangle8";
            Rectangle8.Center = [-0.00275 -0.00315];
            Rectangle8.Length = 0.0045;
            Rectangle8.Width = 0.00025;
            Rectangle8 = rotate(Rectangle8,0,[Rectangle8.Center,-1],[Rectangle8.Center,1]);
        Rectangle2 = Rectangle2 + Rectangle8;%Add
            %Creating Rectangle9 shape.
            Rectangle9 = antenna.Rectangle;
            Rectangle9.Name = "Rectangle9";
            Rectangle9.Center = [0.00275 -0.00315];
            Rectangle9.Length = 0.0045;
            Rectangle9.Width = 0.00025;
            Rectangle9 = rotate(Rectangle9,0,[Rectangle9.Center,-1],[Rectangle9.Center,1]);
        Rectangle2 = Rectangle2 + Rectangle9;%Add
            %Creating Rectangle11 shape.
            Rectangle11 = antenna.Rectangle;
            Rectangle11.Name = "Rectangle11";
            Rectangle11.Center = [0.00275 -0.00125];
            Rectangle11.Length = 0.0045;
            Rectangle11.Width = 0.001;
            Rectangle11 = rotate(Rectangle11,0,[Rectangle11.Center,-1],[Rectangle11.Center,1]);
        Rectangle2 = Rectangle2 - Rectangle11;%Subtract
            %Creating Rectangle10 shape.
            Rectangle10 = antenna.Rectangle;
            Rectangle10.Name = "Rectangle10";
            Rectangle10.Center = [-0.00275 -0.00125];
            Rectangle10.Length = 0.0045;
            Rectangle10.Width = 0.001;
            Rectangle10 = rotate(Rectangle10,0,[Rectangle10.Center,-1],[Rectangle10.Center,1]);
        Rectangle2 = Rectangle2 - Rectangle10;%Subtract
            %Creating Rectangle13 shape.
            Rectangle13 = antenna.Rectangle;
            Rectangle13.Name = "Rectangle13";
            Rectangle13.Center = [-0.00275 0.00125];
            Rectangle13.Length = 0.0045;
            Rectangle13.Width = 0.00125;
            Rectangle13 = rotate(Rectangle13,0,[Rectangle13.Center,-1],[Rectangle13.Center,1]);
        Rectangle2 = Rectangle2 - Rectangle13;%Subtract
            %Creating Rectangle14 shape.
            Rectangle14 = antenna.Rectangle;
            Rectangle14.Name = "Rectangle14";
            Rectangle14.Center = [0.00275 0.00125];
            Rectangle14.Length = 0.0045;
            Rectangle14.Width = 0.00125;
            Rectangle14 = rotate(Rectangle14,0,[Rectangle14.Center,-1],[Rectangle14.Center,1]);
        Rectangle2 = Rectangle2 - Rectangle14;%Subtract
            %Creating Rectangle16 shape.
            Rectangle16 = antenna.Rectangle;
            Rectangle16.Name = "Rectangle16";
            Rectangle16.Center = [0.00275 0.002];
            Rectangle16.Length = 0.0045;
            Rectangle16.Width = 0.0005;
            Rectangle16 = rotate(Rectangle16,0,[Rectangle16.Center,-1],[Rectangle16.Center,1]);
        Rectangle2 = Rectangle2 - Rectangle16;%Subtract
            %Creating Rectangle15 shape.
            Rectangle15 = antenna.Rectangle;
            Rectangle15.Name = "Rectangle15";
            Rectangle15.Center = [-0.00275 0.002];
            Rectangle15.Length = 0.0045;
            Rectangle15.Width = 0.0005;
            Rectangle15 = rotate(Rectangle15,0,[Rectangle15.Center,-1],[Rectangle15.Center,1]);
        Rectangle2 = Rectangle2 - Rectangle15;%Subtract
            %Creating Rectangle31 shape.
            Rectangle31 = antenna.Rectangle;
            Rectangle31.Name = "Rectangle31";
            Rectangle31.Center = [-0.00275 -0.003];
            Rectangle31.Length = 0.0045;
            Rectangle31.Width = 0.0002;
            Rectangle31 = rotate(Rectangle31,0,[Rectangle31.Center,-1],[Rectangle31.Center,1]);
        Rectangle2 = Rectangle2 - Rectangle31;%Subtract
            %Creating Rectangle32 shape.
            Rectangle32 = antenna.Rectangle;
            Rectangle32.Name = "Rectangle32";
            Rectangle32.Center = [0.00275 -0.003];
            Rectangle32.Length = 0.0045;
            Rectangle32.Width = 0.0002;
            Rectangle32 = rotate(Rectangle32,0,[Rectangle32.Center,-1],[Rectangle32.Center,1]);
        Rectangle2 = Rectangle2 - Rectangle32;%Subtract
    MetalLayer1 = Rectangle2;

%%Create Feed
feedloc = [[0,-wg/2].*0.001,[1 3];...
    ];

%%Create Metal
metalobj = metal;
metalobj.Name = 'Copper';
metalobj.Conductivity = 59600000;
metalobj.Thickness = 0.000889; % 0.035 mils

pcbobj.Conductor = metalobj;

%%Assign properties
pcbobj.BoardThickness = 0.0016;
pcbobj.Layers = {MetalLayer2,DielectricLayer1,MetalLayer1,};
pcbobj.FeedLocations = feedloc;
pcbobj.FeedDiameter = 0.0004;
pcbobj.ViaDiameter = 0.001;
pcbobj.FeedViaModel = 'strip';
pcbobj.FeedVoltage = 1;
pcbobj.FeedPhase = 0;
