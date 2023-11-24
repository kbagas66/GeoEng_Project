classdef SPTLiq_v10_Code_MATLAB < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        SPTLiqv10UIFigure               matlab.ui.Figure
        TabGroup                        matlab.ui.container.TabGroup
        SoilInvestigationDataTab        matlab.ui.container.Tab
        SPTLiqv_1_0_Label               matlab.ui.container.Panel
        v10Label                        matlab.ui.control.Label
        SPTLiqLabel                     matlab.ui.control.Label
        KSNULogo                        matlab.ui.control.Image
        GeotechnicalEngineeringLabKunsanNationalUniversityLabel  matlab.ui.control.Label
        SPTNBasedLiquefactionAssessmentSoftware  matlab.ui.control.Label
        DataImportandSelectionPanel     matlab.ui.container.Panel
        ImportDataButton                matlab.ui.control.Button
        SelectBoreholeDropDownLabel     matlab.ui.control.Label
        ResetButtonTab1                 matlab.ui.control.Button
        SelectBoreholeDropDown          matlab.ui.control.DropDown
        SoilInvestigationDataPanel      matlab.ui.container.Panel
        SoilInvestigationDataPlotTable  matlab.ui.control.Table
        SaveChangesButton               matlab.ui.control.Button
        ProgressTab1                    matlab.ui.control.Label
        SPTNPlotTab1                    matlab.ui.control.UIAxes
        LiquefactionAssessmentTab       matlab.ui.container.Tab
        LiquefactionAssessmentMethodPanel  matlab.ui.container.Panel
        MSFValuesListButton             matlab.ui.control.Button
        ManualMSFInputEditField         matlab.ui.control.NumericEditField
        CRR75EquationDropDown           matlab.ui.control.DropDown
        CRR75EquationDropDownLabel      matlab.ui.control.Label
        MagnitudeScalingFactorMSFDropDown  matlab.ui.control.DropDown
        MagnitudeScalingFactorMSFDropDownLabel  matlab.ui.control.Label
        OtherParametersPanel            matlab.ui.container.Panel
        MomentMagnitudeEditField        matlab.ui.control.NumericEditField
        MomentMagnitudeMwLabel          matlab.ui.control.Label
        PeakHorizontalAccelerationEditField  matlab.ui.control.NumericEditField
        PeakHorizontalAccelerationgEditFieldLabel  matlab.ui.control.Label
        AtmosphericPressureEditField    matlab.ui.control.NumericEditField
        AtmosphericPressurekPaEditFieldLabel  matlab.ui.control.Label
        CorrectionFactorforSPTNvaluePanel  matlab.ui.container.Panel
        EnergyRatioCETab2               matlab.ui.control.NumericEditField
        EnergyRatioCEEditFieldLabel     matlab.ui.control.Label
        SamplingMethodCSTab2            matlab.ui.control.DropDown
        SamplingMethodCSDropDownLabel   matlab.ui.control.Label
        BoreholeDiameterCBTab2          matlab.ui.control.DropDown
        BoreholeDiameterCBDropDownLabel  matlab.ui.control.Label
        LiquefactionAssessmentResultsPanel  matlab.ui.container.Panel
        LiquefactionAssessmentResultsTable  matlab.ui.control.Table
        ExportResultsButtonTab2         matlab.ui.control.Button
        ResetButtonTab2                 matlab.ui.control.Button
        CalculateButtonTab2             matlab.ui.control.Button
        ProgressTab2                    matlab.ui.control.Label
        SoilInvestigationDataPlotTab    matlab.ui.container.Tab
        GraphicalDisplayPanelTab3       matlab.ui.container.Panel
        SPTNPlotTab3                    matlab.ui.control.UIAxes
        FCPlot                          matlab.ui.control.UIAxes
        D50Plot                         matlab.ui.control.UIAxes
        LiquefactionAssessmentPlotTab   matlab.ui.container.Tab
        GraphicalDisplayPanelTab4       matlab.ui.container.Panel
        LiqAssessment_VerticalStress    matlab.ui.control.UIAxes
        LiqAssessment_CRR               matlab.ui.control.UIAxes
        LiqAssessment_FS                matlab.ui.control.UIAxes
        LiqAssessment_Fwz               matlab.ui.control.UIAxes
        ThreeDVisualizationTab          matlab.ui.container.Tab
        TobePlottedPanel                matlab.ui.container.Panel
        TobePlottedDropDown             matlab.ui.control.DropDown
        SliceLocationsPanel             matlab.ui.container.Panel
        xcoordinateSliceEditField       matlab.ui.control.NumericEditField
        ycoordinateSliceEditField       matlab.ui.control.NumericEditField
        zcoordinateSliceEditField       matlab.ui.control.NumericEditField
        zcoordinateLabel                matlab.ui.control.Label
        ycoordinateLabel_2              matlab.ui.control.Label
        xcoordinateLabel_2              matlab.ui.control.Label
        SpacingPanel                    matlab.ui.container.Panel
        zspacingEditField               matlab.ui.control.NumericEditField
        zspacingLabel                   matlab.ui.control.Label
        yspacingEditField               matlab.ui.control.NumericEditField
        yspacingLabel                   matlab.ui.control.Label
        xspacingEditField               matlab.ui.control.NumericEditField
        xspacingLabel                   matlab.ui.control.Label
        ViewButtonGroup                 matlab.ui.container.ButtonGroup
        XZViewButton                    matlab.ui.control.RadioButton
        ThreeDViewButton                matlab.ui.control.RadioButton
        YZViewButton                    matlab.ui.control.RadioButton
        TopViewButton                   matlab.ui.control.RadioButton
        PredictionCoordinatePanel       matlab.ui.container.Panel
        xcoordinatePredictionEditField  matlab.ui.control.NumericEditField
        ycoordinatePredictionEditField  matlab.ui.control.NumericEditField
        ycoordinateLabel_3              matlab.ui.control.Label
        xcoordinateLabel_3              matlab.ui.control.Label
        PlotMapButton                   matlab.ui.control.Button
        PlotToTableButton               matlab.ui.control.Button
        ExportResultsButtonTab5         matlab.ui.control.Button
        GraphicalDisplayPanelTab5       matlab.ui.container.Panel
        ThreeDimensionalPlot            matlab.ui.control.UIAxes
        ProgressTab5                    matlab.ui.control.Label
        PredictionResultsTable          matlab.ui.control.Table
        PredictedSoilIndexPlotTab       matlab.ui.container.Tab
        GraphicalDisplayPanelTab6       matlab.ui.container.Panel
        SPTNPredictedPlot               matlab.ui.control.UIAxes
        FCPredictedPlot                 matlab.ui.control.UIAxes
        D50PredictedPlot                matlab.ui.control.UIAxes
        LiquefactionAssessmentPlotPredictionTab  matlab.ui.container.Tab
        GraphicalDisplayPanelTab7       matlab.ui.container.Panel
        VerticalStressPredictedPlot     matlab.ui.control.UIAxes
        CRRPredictedPlot                matlab.ui.control.UIAxes
        FSPredictedPlot                 matlab.ui.control.UIAxes
        LPIPredictedPlot                matlab.ui.control.UIAxes
    end


    properties (Access = private)
        indepth; % Depth
        pred_table; %
        pred_table_real; %
        CE; % Energy Ratio Correction Factor
        CB; % Borehole Diameter Correction Factor
        CS; % Sampling Method Correction Factor
        AtmP; % Atmospheric Pressure
        amax; % Peak Horizontal Acceleration
        Mw; % Moment Magnitude
        MSF; % Magnitude Scaling Factor
        method; % Method
        valuexyz; %Plot option for X-Y-Z view
        s; %Slice data
        MyData; %Data in "table" form
        MyDataArr; %Data in "array" form
        BHcode; %Borehole ID
        BA; %Array Data of a Borehole
        MethodStatus; %Liquefaction Assessment Method
        filepath; %filepath
        foldLoc; %Current Folder Location
        predx;  %x-coordinate of the predicted location
        predy; %y-coordinate of the predicted location
    end


    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            checkbox = cell(21, 12);
            checkbox(:,12) = {0};
            app.SoilInvestigationDataPlotTable.Data = checkbox;
            app.SoilInvestigationDataPlotTable.ColumnFormat = {'char', 'numeric', 'numeric', 'numeric', 'numeric', 'numeric', 'numeric', 'char', 'numeric', 'numeric', 'numeric', 'logical'};
            app.LiquefactionAssessmentResultsTable.Data = cell(22,6);
            app.foldLoc = pwd;
        end

        % Button pushed function: ImportDataButton
        function ImportDataButtonPushed(app, event)
            app.ProgressTab1.Text = 'Processing...';
            pause(0.00001);

            %%Import Soil Investigation Data%%
            [filename,path] = uigetfile('*.xlsx','MultiSelect','on');

            if iscell(filename) || any(filename,'all')
                app.filepath = cellstr(strcat(path,filename));

                app.MyData = cell(numel(app.filepath),1);
                app.MyDataArr = cell(numel(app.filepath),1);
                checkbox = array2table(zeros(21, 1));
                checkbox(:,1) = {1};
                checkbox = renamevars(checkbox,"Var1","Participates in Liquefaction?");

                for loop1 = 1:length(app.MyData)
                    app.MyData{loop1} = table2cell(cat(2,readtable(char(app.filepath(loop1))),checkbox));
                    app.MyDataArr{loop1} = single(readmatrix(char(app.filepath(loop1))));
                    app.MyData{loop1}(:,1) = cellstr(string(app.MyData{loop1}(:,1)));
                    app.MyData{loop1}(:,8) = cellstr(string(app.MyData{loop1}(:,8)));
                    app.MyData{loop1} = cell2table(app.MyData{loop1});

                    vars = app.MyData{loop1}.Properties.VariableNames;
                    newNames = {'Borehole ID','x-coordinate','y-coordinate','Ground Surface Elevation (m)',...
                        'Groundwater Level (m)','Depth (m)','SPT-N (N)','Soil Type/Classification','Unit Weight (kN/m3)',...
                        'Passing #200 Sieve (%)','D50 (mm)','Participates in Liquefaction?'};
                    T = app.MyData{loop1};
                    app.MyData{loop1} = renamevars(T,vars,newNames);
                end

                app.BHcode = strings([height(app.MyData),1]);
                for loop2 = 1:length(app.MyData)
                    app.BHcode(loop2) = string(table2cell(app.MyData{loop2}(1,1)));
                end

                app.SelectBoreholeDropDown.Items = app.BHcode; %Set "Name" for each dropdown item
                app.SelectBoreholeDropDown.ItemsData = app.MyData; %Assign data to each dropdown item

                app.SoilInvestigationDataPlotTable.Data = app.SelectBoreholeDropDown.Value;
                app.BA = app.SoilInvestigationDataPlotTable.Data;
                app.BA = cat(2,zeros([21,1]),table2array(app.BA(:,2:7)),zeros([21,1]),table2array(app.BA(:,9:12)));

                plot(app.SPTNPlotTab1,app.BA(:,7),app.BA(:,6)) %Plot SPT-N

                plot(app.SPTNPlotTab3,app.BA(:,7),app.BA(:,6)) %Plot SPT-N
                plot(app.FCPlot,app.BA(:,10),app.BA(:,6)) %Passing #200 Sieve
                plot(app.D50Plot,app.BA(:,11),app.BA(:,6)) %D50

                set(app.TobePlottedPanel,'Enable','off');
                set(app.SliceLocationsPanel,'Enable','off');
                set(app.SpacingPanel,'Enable','off');
                set(app.ViewButtonGroup,'Enable','off');
                set(app.PlotMapButton,'Enable','off');
                set(app.PlotToTableButton,'Enable','off');
                set(app.CalculateButtonTab2,'Enable','off');
                set(app.PredictionCoordinatePanel,'Enable','off');
                set(app.ExportResultsButtonTab5,'Enable','off');
                app.LiquefactionAssessmentResultsTable.Data = {}; %Reset Table and Graphs
                cla(app.LiqAssessment_CRR);
                cla(app.LiqAssessment_FS);
                cla(app.LiqAssessment_Fwz);
                cla(app.LiqAssessment_VerticalStress);

            end

            app.CalculateButtonTab2.Enable = true;

            pause(0.1);
            app.ProgressTab1.Text = 'Done!';

        end

        % Value changed function: SelectBoreholeDropDown
        function SelectBoreholeDropDownValueChanged(app, event)
            app.SoilInvestigationDataPlotTable.Data = app.SelectBoreholeDropDown.Value;
            app.BA = app.SoilInvestigationDataPlotTable.Data;
            app.BA = cat(2,zeros([21,1]),table2array(app.BA(:,2:7)),zeros([21,1]),table2array(app.BA(:,9:12)));

            plot(app.SPTNPlotTab1,app.BA(:,7),app.BA(:,6)) %Plot SPT-N

            plot(app.SPTNPlotTab3,app.BA(:,7),app.BA(:,6)) %Plot SPT-N
            legend(app.SPTNPlotTab3,'SPT-N','Location','northeast')
            plot(app.FCPlot,app.BA(:,10),app.BA(:,6)) %Passing #200 Sieve
            plot(app.D50Plot,app.BA(:,11),app.BA(:,6)) %D50
        end

        % Button pushed function: SaveChangesButton
        function SaveChangesButtonPushed(app, event)
            BHID = char(app.SelectBoreholeDropDown.Value{1,1});
            ROW = find(app.BHcode==BHID);
            app.MyData{ROW} = app.SoilInvestigationDataPlotTable.Data;
            app.SelectBoreholeDropDown.ItemsData = app.MyData;
        end

        % Button pushed function: ResetButtonTab1
        function ResetButtonTab1ButtonPushed(app, event)
            app.ProgressTab1.Text = 'Processing...';
            pause(0.1);

            app.SoilInvestigationDataPlotTable.Data = {}; %Reset Table and Graphs
            app.LiquefactionAssessmentResultsTable.Data = {};
            app.SelectBoreholeDropDown.Items = {};
            cla(app.SPTNPlotTab3)
            cla(app.FCPlot)
            cla(app.D50Plot)
            cla(app.SPTNPlotTab1)

            set(app.TobePlottedPanel,'Enable','off');
            set(app.SliceLocationsPanel,'Enable','off');
            set(app.SpacingPanel,'Enable','off');
            set(app.ViewButtonGroup,'Enable','off');
            set(app.PlotMapButton,'Enable','off');
            set(app.PlotToTableButton,'Enable','off');
            set(app.CalculateButtonTab2,'Enable','off');
            set(app.PredictionCoordinatePanel,'Enable','off');
            set(app.ExportResultsButtonTab5,'Enable','off');

            app.ProgressTab1.Text = 'Done!';
        end

        % Value changed function: CRR75EquationDropDown
        function CRR75EquationDropDownValueChanged(app, event)
            value = app.CRR75EquationDropDown.Value;

            if strcmp(value,'Japan Design Specification of Highway Bridge')
                app.EnergyRatioCETab2.Enable = false;
                app.BoreholeDiameterCBTab2.Enable = false;
                app.SamplingMethodCSTab2.Enable = false;
                app.AtmosphericPressureEditField.Enable = false;
                app.PeakHorizontalAccelerationEditField.Enable = false;
                app.MomentMagnitudeEditField.Enable = false;
                app.MagnitudeScalingFactorMSFDropDown.Enable = false;
                app.ManualMSFInputEditField.Enable = false;
                app.MSFValuesListButton.Enable = false;

            elseif strcmp(value,'Korean Liquefaction Assessment Method')
                app.EnergyRatioCETab2.Enable = true;
                app.BoreholeDiameterCBTab2.Enable = true;
                app.SamplingMethodCSTab2.Enable = true;
                app.AtmosphericPressureEditField.Enable = false;
                app.PeakHorizontalAccelerationEditField.Enable = true;
                app.MomentMagnitudeEditField.Enable = false;
                app.MagnitudeScalingFactorMSFDropDown.Enable = false;
                app.ManualMSFInputEditField.Enable = false;
                app.MSFValuesListButton.Enable = false;

            elseif strcmp(value,'Seed and Idriss')
                app.EnergyRatioCETab2.Enable = true;
                app.BoreholeDiameterCBTab2.Enable = true;
                app.SamplingMethodCSTab2.Enable = true;
                app.AtmosphericPressureEditField.Enable = true;
                app.PeakHorizontalAccelerationEditField.Enable = true;
                app.MomentMagnitudeEditField.Enable = false;
                app.MagnitudeScalingFactorMSFDropDown.Enable = false;
                app.ManualMSFInputEditField.Enable = true;
                app.MSFValuesListButton.Enable = true;

            elseif strcmp(value,'Youd et al')
                app.EnergyRatioCETab2.Enable = true;
                app.BoreholeDiameterCBTab2.Enable = true;
                app.SamplingMethodCSTab2.Enable = true;
                app.AtmosphericPressureEditField.Enable = true;
                app.PeakHorizontalAccelerationEditField.Enable = true;
                app.MomentMagnitudeEditField.Enable = true;
                app.MagnitudeScalingFactorMSFDropDown.Enable = true;

                value2 = app.MagnitudeScalingFactorMSFDropDown.Value;
                if strcmp(value2,'Input MSF Value')
                    app.ManualMSFInputEditField.Enable = true;
                    app.MSFValuesListButton.Enable = true;
                    app.MomentMagnitudeEditField.Enable = false;
                else
                    app.ManualMSFInputEditField.Enable = false;
                    app.MSFValuesListButton.Enable = false;
                    app.MomentMagnitudeEditField.Enable = true;
                end
            end
        end

        % Value changed function: MagnitudeScalingFactorMSFDropDown
        function MagnitudeScalingFactorMSFDropDownValueChanged(app, event)
            value = app.MagnitudeScalingFactorMSFDropDown.Value;
            if strcmp(value,'Input MSF Value')
                app.ManualMSFInputEditField.Enable = true;
                app.MSFValuesListButton.Enable = true;
                app.MomentMagnitudeEditField.Enable = false;
            else
                app.ManualMSFInputEditField.Enable = false;
                app.MSFValuesListButton.Enable = false;
                app.MomentMagnitudeEditField.Enable = true;
            end
        end

        % Button pushed function: MSFValuesListButton
        function MSFValuesListButtonPushed(app, event)
            img = imread('MSFValues1.png');
            imshow(img);
        end

        % Button pushed function: CalculateButtonTab2
        function CalculateButtonTab2Pushed(app, event)
            app.ProgressTab2.Text = 'Processing...';
            pause(0.1);

            app.BA = app.SelectBoreholeDropDown.Value;
            app.BA = cat(2,zeros([21,1]),table2array(app.BA(:,2:7)),zeros([21,1]),table2array(app.BA(:,9:12)));

            app.method = app.CRR75EquationDropDown.Value;

            %% Liquefaction Potential Calculation%%
            if strcmp(app.method,'Japan Design Specification of Highway Bridge')

                %Set Coefficient
                cZ = 0.85;
                cG = 1.2;
                cI = 1.1;
                kSO = 0.15;
                kS = cZ*cG*cI*kSO;

                %Magnitude
                app.Mw = app.MomentMagnitudeEditField.Value;

                %Create Table
                X = (0:20);
                liq_table = zeros([length(X),22]);

                liq_table(:,1) = app.BA(:,12); %Participates in Liquefaction?
                liq_table(:,2) = app.BA(:,6);%Depth
                liq_table(:,3) = app.BA(:,4)-app.BA(:,5);%WT Depth
                liq_table(:,4) = liq_table(:,2)-liq_table(:,3);%Depth from WT
                liq_table(:,5) = app.BA(:,7);%SPT-N
                liq_table(:,21:22) = app.BA(:,2:3); % Coordinate X Y
                liq_table(:,12) = app.BA(:,9);

                helpcol = liq_table(:,2);
                helpcol(helpcol<0) = NaN;
                liq_table(:,2) = helpcol;

                %Sigmav0(Total overburden pressure)
                liq_table(:,6) = liq_table(:,12).*liq_table(:,2);

                %Sigmav0(in kN/cm2)
                liq_table(:,7) = liq_table(:,6)./100;

                %Sigma'v0(Effective Vertical Stress)
                helpcol = zeros([length(X),1]);


                for loop1 = 1:length(X)
                    if liq_table(loop1,2) < liq_table(loop1,3)
                        helpcol(loop1) = liq_table(loop1,2).*liq_table(loop1,12);
                    else
                        helpcol(loop1) = (liq_table(loop1,2)-liq_table(loop1,3)).*(liq_table(loop1,12)-9.81)+(liq_table(loop1,3).*liq_table(loop1,12));
                    end
                end

                liq_table(:,8) = helpcol;

                %Sigma'v0(in kN/cm2)
                liq_table(:,9) = liq_table(:,8)./100;

                %D50
                liq_table(:,10) = app.BA(:,11);

                %FC
                liq_table(:,11) = app.BA(:,10);

                %R1
                liq_table(:,13) = 0.0882*sqrt(liq_table(:,5)./(liq_table(:,8)+0.7));
                %R2
                helpcol = zeros([length(X),1]);


                for loop1 = 1:length(X)
                    if liq_table(loop1,10) >= 0.02 && liq_table(loop1,10) <=0.05
                        helpcol(loop1) = 0.19;
                    elseif liq_table(loop1,10) > 0.05 && liq_table(loop1,10) <= 0.6
                        helpcol(loop1) = 0.225*log10(0.35/liq_table(loop1,10));
                    elseif liq_table(loop1,10) > 0.6 && liq_table(loop1,10) <= 2
                        helpcol(loop1) = -0.05;
                    end
                end

                liq_table(:,14) = helpcol;

                % R3
                helpcol = zeros([length(X),1]);


                for loop1 = 1:length(X)
                    if liq_table(loop1,11) >= 0 && liq_table(loop1,11) <= 40
                        helpcol(loop1) = 0;
                    elseif liq_table(loop1,11) > 40 && liq_table(loop1,11) <= 100
                        helpcol(loop1) = 0.004*liq_table(loop1,11)-0.16;
                    end
                end

                liq_table(:,15) = helpcol;

                %R
                liq_table(:,16) = liq_table(:,13) + liq_table(:,14) + liq_table(:,15);

                %γd (rd)
                liq_table(:,17) = 1-0.015.*(liq_table(:,2));

                %L
                liq_table(:,18) = liq_table(:,17).*kS.*(liq_table(:,7)./liq_table(:,9));

                %FL
                helpcol = zeros([length(X),1]);
                helpcol1_2 = liq_table(:,2);
                helpcol1_3 = liq_table(:,3);
                %%%

                for loop1 = 1:length(X)
                    if liq_table(loop1,1) == 0 || helpcol1_2(loop1) < helpcol1_3(loop1)
                        helpcol(loop1) = 1;
                    else
                        helpcol(loop1) = liq_table(loop1,16)/liq_table(loop1,18);
                    end
                end

                liq_table(:,19) = helpcol;

                %Risk
                helpcol = zeros([length(X),1]);


                for loop1 = 1:length(X)
                    if liq_table(loop1,19) < 1
                        helpcol(loop1) = 1;
                    elseif liq_table(loop1,19) >= 1
                        helpcol(loop1) = 2;
                    end
                end

                liq_table(:,20) = helpcol;


                %% PL-Value

                % Create PL-Value Calculation Table
                PL_table = zeros([length(X),11]);

                % Coordinate
                PL_table(:,1:2) = liq_table(:,21:22);

                % Depth
                PL_table(:,3) = liq_table(:,2);

                %FL
                Fs1 = liq_table(:,19);
                Fs1(Fs1<0) = 0;
                Fs = liq_table(:,19);
                Fs(Fs>1) = 1;
                Fs(Fs<0) = 0;
                PL_table(:,4) = Fs;

                %Liquefaction Risk
                PL_table(:,5) = liq_table(:,20);

                %w(z)
                PL_table(:,6) = 10-(0.5.*PL_table(:,3));

                %F
                helpcol = zeros([length(X),1]);


                for loop1 = 1:length(X)
                    if isnan(PL_table(loop1,3))
                        helpcol(loop1) = NaN;
                    elseif PL_table(loop1,5) == 1 ||PL_table(loop1,5) == 2
                        helpcol(loop1) = 1-PL_table(loop1,4);
                    else
                        helpcol(loop1) = 0;
                    end
                end

                PL_table(:,7) = helpcol;

                %int(w)
                helpcol = zeros([length(X),1]);


                for loop1 = 1:length(X)
                    if isnan(PL_table(loop1,3))
                        helpcol(loop1) = NaN;
                    elseif PL_table(loop1,3) == 0 || PL_table(loop1,3) < 1
                        helpcol(loop1) = 0;
                    else
                        helpcol(loop1) = (PL_table(loop1,6) + PL_table(loop1-1,6))/2.*(PL_table(loop1,3)-PL_table(loop1-1,3));
                    end
                end


                PL_table(:,8) = helpcol;

                %F.int(w)
                PL_table(:,9) = PL_table(:,7).*PL_table(:,8);

                %Cumulative
                helpcol = zeros([length(X),1]);


                for loop1 = 1:length(X)
                    if isnan(PL_table(loop1,3))
                        helpcol(loop1) = NaN;
                    elseif PL_table(loop1,3) == 0 || PL_table(loop1,3) < 1
                        helpcol(loop1) = PL_table(loop1,9);
                    else
                        helpcol(loop1) = helpcol(loop1-1) + PL_table(loop1,9);
                    end
                end

                PL_table(:,10) = helpcol;

                %%
                %PL
                helpcol = zeros([length(X),1]);

                for loop1 = 1:length(X)
                    if loop1 == length(X)
                        helpcol(loop1) = PL_table(loop1,10);
                    elseif PL_table(loop1+1,3) == 0
                        helpcol(loop1) = PL_table(loop1,10);
                    else
                        helpcol(loop1) = NaN;
                    end
                end

                PL_table(:,11) = helpcol;

            else

                %% Input Data
                %CE
                value = app.EnergyRatioCETab2.Value;
                app.CE = value;

                %CB
                value = app.BoreholeDiameterCBTab2.Value;
                if strcmp(value,'65-115 mm')
                    app.CB = 1;
                elseif strcmp(value,'150 mm')
                    app.CB = 1.05;
                else
                    app.CB = 1.15;
                end

                %CS
                value = app.SamplingMethodCSTab2.Value;
                if strcmp(value,'Standard Sampler')
                    app.CS = 1;
                else
                    app.CS = 1.1;
                end

                %AtmP
                value = app.AtmosphericPressureEditField.Value;
                app.AtmP = value;

                value = app.CRR75EquationDropDown.Value;
                if strcmp(value,'Korean Liquefaction Assessment Method')
                    app.AtmP = 96; % kPa
                end

                %Peak Horizontal Acceleration
                value = app.PeakHorizontalAccelerationEditField.Value;
                app.amax = value;

                %Moment Magnitude
                value = app.CRR75EquationDropDown.Value;
                if strcmp(value,'Korean Liquefaction Assessment Method')
                    app.Mw = 6.5;
                else
                    app.Mw = app.MomentMagnitudeEditField.Value;
                end

                %Create Table
                X = (0:20);
                liq_table = zeros([length(X),26]);

                liq_table(:,1) = app.BA(:,12); %Participate in Liquefaction?
                liq_table(:,2) = app.BA(:,10);%Finer than 0.075 mm Sieve (%FC)
                liq_table(:,3) = app.BA(:,6);%Depth from Ground Surface
                liq_table(:,4) = app.BA(:,4)-app.BA(:,5);%Depth to the water table

                %Depth from WT
                liq_table(:,5) = liq_table(:,3)-liq_table(:,4);

                %Rod Length
                liq_table(:,6) = liq_table(:,3); %1.5 from Estimation

                %Cr (Rod Length Coefficient)
                helpcol1 = liq_table(:,6);
                helpcol2 = zeros([length(X),1]);

                for loop1 = 1:length(X)
                    if helpcol1(loop1) == 0
                        helpcol2(loop1) = 0;
                    elseif helpcol1(loop1)<3
                        helpcol2(loop1) = 0.75;
                    elseif helpcol1(loop1) >=3 && helpcol1(loop1)<4
                        helpcol2(loop1) = 0.8;
                    elseif helpcol1(loop1)>=4 && helpcol1(loop1)<6
                        helpcol2(loop1) = 0.85;
                    elseif helpcol1(loop1)>=6 && helpcol1(loop1)<10
                        helpcol2(loop1) = 0.95;
                    else
                        helpcol2(loop1) = 1;
                    end
                end

                liq_table(:,7) = helpcol2;

                %N-SPT
                liq_table(:,8) = app.BA(:,7);

                %N60
                liq_table(:,9) = round(app.BA(:,7)*(app.CB)*(app.CS)*(app.CE).*liq_table(:,7));

                %Unit Weight(Gamma)
                liq_table(:,10) = app.BA(:,9);

                %Gamma'
                helpcol1 = liq_table(:,3);
                helpcol1_1 = liq_table(:,4);
                helpcol1_2 = liq_table(:,10);
                helpcol2 = zeros([length(X),1]);

                for loop1 = 1:length(X)
                    if helpcol1(loop1) >= helpcol1_1(loop1)
                        helpcol2(loop1) = helpcol1_2(loop1);
                    else
                        helpcol2(loop1) = helpcol1_2(loop1)-9.81;
                    end
                end

                liq_table(:,11) = helpcol2;

                %Sigma'v0(Effective Vertical Stress)
                helpcol1 = liq_table(:,3);
                helpcol1_1 = liq_table(:,4);
                helpcol1_2 = liq_table(:,10);
                helpcol2 = zeros([length(X),1]);

                for loop1 = 1:length(X)
                    if helpcol1(loop1) < helpcol1_1(loop1)
                        helpcol2(loop1) = helpcol1(loop1).*helpcol1_2(loop1);
                    else
                        helpcol2(loop1) = (helpcol1(loop1)-helpcol1_1(loop1)).*(helpcol1_2(loop1)-9.81)+(helpcol1_1(loop1).*helpcol1_2(loop1));
                    end
                end

                liq_table(:,12) = helpcol2;

                %Cn(Overburden Coefficient)
                helpcol1 = liq_table(:,12);
                helpcol2 = zeros([length(X),1]);

                value = app.CRR75EquationDropDown.Value;
                value2 = app.AtmP;
                if strcmp(value,"Youd et al")
                    for loop1 = 1:length(X)
                        if  (value2/helpcol1(loop1))^0.5 > 1.7
                            helpcol2(loop1) = 1.7;
                        else
                            helpcol2(loop1) = (value2/helpcol1(loop1))^0.5;
                        end
                    end
                else
                    for loop1 = 1:length(X)
                        if 2.2/(1.2+(helpcol1(loop1)/value2)) > 1.7
                            helpcol2(loop1) = 1.7;
                        else
                            helpcol2(loop1) = 2.2/(1.2+(helpcol1(loop1)/value2));
                        end
                    end
                end

                liq_table(:,13) = helpcol2;


                %(N1)60
                liq_table(:,14) = round(liq_table(:,9).*liq_table(:,13));

                %Alpha (Fines Content Correction)
                helpcol1 = liq_table(:,2);
                helpcol2 = zeros([length(X),1]);

                for loop1 = 1:length(X)
                    if helpcol1(loop1) <= 5
                        helpcol2(loop1) = 0;
                    elseif helpcol1(loop1) > 5 && helpcol1(loop1) < 35
                        helpcol2(loop1) = exp(1.76-(190/helpcol1(loop1)^2));
                    else
                        helpcol2(loop1) = 5;
                    end
                end

                liq_table(:,15) = helpcol2;

                %Beta (Fines Content Correction)
                helpcol1 = liq_table(:,2);
                helpcol2 = zeros([length(X),1]);

                for loop1 = 1:length(X)
                    if helpcol1(loop1) <= 5
                        helpcol2(loop1) = 1;
                    elseif helpcol1(loop1) > 5 && helpcol1(loop1) < 35
                        helpcol2(loop1) = 0.99+helpcol1(loop1)^1.5/1000;
                    else
                        helpcol2(loop1) = 1.2;
                    end
                end

                liq_table(:,16) = helpcol2;

                %(N1)60cs (Corrected(N1)60)
                liq_table(:,17) = round(liq_table(:,15)+liq_table(:,16).*liq_table(:,14));

                %Mw (Magnitude)
                value = app.CRR75EquationDropDown.Value;
                if strcmp(value,'Korean Liquefaction Assessment Method')
                    liq_table(:,18) = 6.5;
                else
                    liq_table(:,18) = app.Mw;
                end

                %MSF (Revised Idriss Scaling Factor)
                value = app.CRR75EquationDropDown.Value;

                if strcmp(value,'Seed and Idriss')
                    liq_table(:,19) = app.ManualMSFInputEditField.Value;
                elseif strcmp(value,'Korean Liquefaction Assessment Method')
                    liq_table(:,19) = (app.Mw/7.5).^1.19;
                else
                    value2 = app.MagnitudeScalingFactorMSFDropDown.Value;
                    if strcmp(value2,'Input MSF Value')
                        liq_table(:,19) = app.ManualMSFInputEditField.Value;
                    else
                        liq_table(:,19) = 10^2.24./(liq_table(:,18).^2.56);
                    end
                end

                %CRR
                if strcmp(value,'Youd et al')
                    liq_table(:,20) = 1./(34-liq_table(:,17))+(liq_table(:,17)/135)+(50/(10*liq_table(:,17)+45).^2)'-(1/200);
                else
                    liq_table(:,20) = 1./(34-liq_table(:,14))+(liq_table(:,14)/135)+(50/(10*liq_table(:,14)+45).^2)'-(1/200);
                end

                %amax (g)
                liq_table(:,21) = app.amax;

                %Sigmav0(Total overburden pressure)
                liq_table(:,22) = liq_table(:,3).*liq_table(:,10);

                %rd (stress reduction coefficient)
                value = app.CRR75EquationDropDown.Value;

                if strcmp(value,'Seed and Idriss')
                    for loop1 = 1:length(X)
                        if liq_table(loop1,3) <=9.15
                            liq_table(loop1,23) = 1-0.00765*liq_table(loop1,3);
                        else
                            liq_table(loop1,23) = 1.174-0.0267*liq_table(loop1,3);
                        end
                    end
                elseif strcmp(value,'Korean Liquefaction Assessment Method')
                    liq_table(:,23) = 1;
                elseif strcmp(value,'Youd et al')
                    liq_table(:,23) = (1-(0.4113.*liq_table(:,3).^0.5)+0.04052.*liq_table(:,3)+(0.001753.*liq_table(:,3).^1.5))./(1-(0.4177.*liq_table(:,3).^0.5)+0.05729.*liq_table(:,3)-(0.006205.*liq_table(:,3).^1.5)+(0.00121.*liq_table(:,3).^2));
                end

                %CSR
                liq_table(:,24) = 0.65.*liq_table(:,21).*liq_table(:,22)./liq_table(:,12).*liq_table(:,23);

                %FS
                helpcol1 = liq_table(:,1);
                helpcol1_1 = liq_table(:,20);
                helpcol1_2 = liq_table(:,24);
                helpcol1_3 = liq_table(:,19);
                helpcol1_4 = liq_table(:,3);
                helpcol1_5 = liq_table(:,4);
                helpcol2 = zeros([length(X),1]);

                for loop1 = 1:length(X)
                    if helpcol1(loop1) == 0 || helpcol1_4(loop1) < helpcol1_5(loop1)
                        helpcol2(loop1) = 1;
                    elseif isnan(helpcol1_2(loop1))
                        helpcol2(loop1) = 0;
                    else
                        helpcol2(loop1) = helpcol1_1(loop1)./helpcol1_2(loop1).*helpcol1_3(loop1);
                    end
                end

                liq_table(:,25) = helpcol2;

                %Risk
                helpcol1 = liq_table(:,2);
                helpcol1_1 = liq_table(:,1);
                helpcol1_3 = liq_table(:,25);
                helpcol1_4 = liq_table(:,3);
                helpcol2 = zeros([length(X),1]);

                for loop1 = 1:length(X)
                    if helpcol1_1(loop1) == 0 || helpcol1_4(loop1) == 0
                        helpcol2(loop1) = 3;
                    elseif helpcol1_3(loop1) <= 1
                        helpcol2(loop1) = 1;
                    elseif helpcol1_3(loop1) > 1
                        helpcol2(loop1) = 2;
                    end
                end

                liq_table(:,26) = helpcol2;

                liq_table = cat(2,app.BA(:,2:3),liq_table);


                %% PL-Value
                % Create PL-Value Calculation Table
                PL_table = zeros([length(X),11]);

                % Coordinate
                PL_table(:,1:2) = liq_table(:,1:2);

                % Depth
                PL_table(:,3) = liq_table(:,5);

                %Fs
                Fs1 = liq_table(:,27);
                Fs1(Fs1<0) = 0;
                Fs = liq_table(:,27);
                Fs(Fs>1) = 1;
                Fs(Fs<0) = 0;
                PL_table(:,4) = Fs;

                %Liquefaction Risk
                PL_table(:,5) = liq_table(:,28);

                %w(z)
                PL_table(:,6) = 10-(0.5.*PL_table(:,3));

                %F
                helpcol1 = PL_table(:,5);
                helpcol1_1 = PL_table(:,4);
                helpcol2 = zeros([length(X),1]);

                for loop1 = 1:length(X)
                    if helpcol1(loop1) == 1 || helpcol1(loop1) == 2
                        helpcol2(loop1) = 1-helpcol1_1(loop1);
                    else
                        helpcol2(loop1) = 0;
                    end
                end

                PL_table(:,7) = helpcol2;

                %int(w)
                helpcol1 = PL_table(:,3);
                helpcol1_1 = PL_table(:,6);
                helpcol2 = zeros([length(X),1]);

                for loop1 = 1:length(X)
                    if helpcol1(loop1) == 0
                        helpcol2(loop1) = 0;
                    else
                        helpcol2(loop1) = (helpcol1_1(loop1) + helpcol1_1(loop1-1))/2.*(helpcol1(loop1)-helpcol1(loop1-1));
                    end
                end

                PL_table(:,8) = helpcol2;

                %F.int(w)
                PL_table(:,9) = PL_table(:,7).*PL_table(:,8);

                %Cumulative
                helpcol1 = PL_table(:,3);
                helpcol1_1 = PL_table(:,9);
                helpcol2 = zeros([length(X),1]);


                for loop1 = 1:length(X)
                    if helpcol1(loop1) == 0
                        helpcol2(loop1) = helpcol1_1(loop1);
                    else
                        %Check This
                        helpcol2(loop1) = helpcol2(loop1-1) + helpcol1_1(loop1);
                    end
                end

                PL_table(:,10) = helpcol2;


                %%
                %PL
                helpcol1 = PL_table(:,3);
                helpcol1_1 = PL_table(:,10);
                helpcol2 = zeros([length(X),1]);

                for loop1 = 1:length(X)
                    if loop1 == length(X)
                        helpcol2(loop1) = helpcol1_1(loop1);
                    elseif helpcol1(loop1+1) == 0
                        helpcol2(loop1) = helpcol1_1(loop1);
                    else
                        helpcol2(loop1) = NaN;
                    end
                end

                PL_table(:,11) = helpcol2;
            end

            if strcmp(app.method,'Japan Design Specification of Highway Bridge')
                %% Depth, FS, LPI, (N1)60, CRR
                plot_table = zeros(length(X),9);
                plot_table(:,1) = liq_table(:,2); %Depth
                plot_table(:,2) = liq_table(:,8); %Effective Stress
                plot_table(:,3) = liq_table(:,6); % Total Stress
                plot_table(:,4) = liq_table(:,16); %R
                plot_table(:,5) = Fs1; %FS
                plot_table(:,6) = PL_table(:,9); %F.w(z)
                plot_table(:,7) = liq_table(:,18); %L
                plot_table(:,8) = liq_table(:,3); %WT depth
                plot_table(:,9) = PL_table(:,11); %PL

                plot(app.SPTNPlotTab3,app.BA(:,7),app.BA(:,6)); %Plot SPT-N
                legend(app.SPTNPlotTab3,'N','Location','northeast');
                plot(app.LiqAssessment_FS,plot_table(:,5),plot_table(:,1)); %Plot FS vs Depth
                plot(app.LiqAssessment_Fwz,plot_table(:,6),plot_table(:,1)); %Plot LPI vs Depth
                plot(app.LiqAssessment_CRR,plot_table(:,4),plot_table(:,1)); %Plot CRR vs Depth
                plot(app.LiqAssessment_VerticalStress,plot_table(:,3),plot_table(:,1),'Color','red') %Plot Total Stress
                hold(app.LiqAssessment_VerticalStress,'on')
                plot(app.LiqAssessment_VerticalStress,plot_table(:,2),plot_table(:,1),'Color','blue') %Plot Eff. Stress
                legend(app.LiqAssessment_VerticalStress,'Total Stress','Effective Stress','Location','northeast')
                hold(app.LiqAssessment_VerticalStress,'off')

                %% Plot results to the table
                InputData = table2cell(app.SoilInvestigationDataPlotTable.Data);
                plot_table_cell = num2cell(plot_table);

                newDisplayData = cell(length(X),18);

                %% Plot Table
                newDisplayData(:,1) = InputData(:,1); %Borehole
                newDisplayData(:,2) = InputData(:,2); %x-coordinate
                newDisplayData(:,3) = InputData(:,3); %y-coordinate
                newDisplayData(:,4) = InputData(:,4); %Ground Surface Elevation
                newDisplayData(:,5) = plot_table_cell(:,8); %Depth to the water table
                newDisplayData(:,6) = InputData(:,6); %Depth
                newDisplayData(:,7) = InputData(:,8); %Soil Type/Class
                newDisplayData(:,8) = InputData(:,9); %Unit Weight
                newDisplayData(:,9) = InputData(:,10); %Fines Content
                newDisplayData(:,10) = InputData(:,11); %D50
                newDisplayData(:,11) = plot_table_cell(:,2); %Eff. Overburden Stress
                newDisplayData(:,12) = plot_table_cell(:,3); %Total Overburden Stress
                newDisplayData(:,13) = InputData(:,7); %N
                newDisplayData(:,14) = plot_table_cell(:,7); %L
                newDisplayData(:,15) = plot_table_cell(:,4); %R
                newDisplayData(:,16) = plot_table_cell(:,5); %Safety Factor
                newDisplayData(:,17) = plot_table_cell(:,6); %F.w(z)
                newDisplayData(:,18) = plot_table_cell(:,9); %PL

                t = cell2mat(newDisplayData(:,14));
                t(isnan(t)) = 0;
                newDisplayData(:,14) = num2cell(t);

                app.LiquefactionAssessmentResultsTable.Data = newDisplayData;
                app.LiquefactionAssessmentResultsTable.ColumnName = {'Borehole ID','x-coordinate','y-coordinate','Ground Surface Elevation (m)',...
                    'Depth to The Water Table (m)','Depth (m)','Soil Type/Classification','Unit Weight (kN/m3)',...
                    'Fines Content (%)','D50 (mm)','Effective Vertical Stress (kN/m3)',...
                    'Total Vertical Stress (kN/m3)','N','CSR',...
                    'CRR','Factor of Safety (FS)','F.w(z)','Liquefaction Potential Index (PL)'};

            else
                %% Depth, FS, LPI, (N1)60, CRR
                plot_table = zeros(length(X),13);
                plot_table(:,1) = liq_table(:,5); %Depth
                plot_table(:,2) = liq_table(:,14); %Effective Stress
                plot_table(:,3) = liq_table(:,24); % Total Stress
                plot_table(:,4) = liq_table(:,22); %CRR
                plot_table(:,5) = Fs1; %FS
                plot_table(:,6) = PL_table(:,9); %F.w(z)
                plot_table(:,7) = liq_table(:,11); %N60
                plot_table(:,8) = liq_table(:,16); %(N1)60
                plot_table(:,9) = liq_table(:,26); %CSR
                plot_table(:,10) = liq_table(:,25); %rd
                plot_table(:,11) = liq_table(:,21); %MSF
                plot_table(:,12) = liq_table(:,6); %Depth to The Water Table
                plot_table(:,13) = PL_table(:,11); %PL


                plot(app.LiqAssessment_CRR,plot_table(:,4),plot_table(:,1)) %Plot CRR vs Depth
                plot(app.LiqAssessment_FS,plot_table(:,5),plot_table(:,1)) %Plot FS vs Depth
                plot(app.LiqAssessment_Fwz,plot_table(:,6),plot_table(:,1)) %Plot F.w(z) vs Depth
                plot(app.SPTNPlotTab3,plot_table(:,7),plot_table(:,1),'Color','blue') %Plot N60
                hold(app.SPTNPlotTab3,'on')
                plot(app.SPTNPlotTab3,plot_table(:,8),plot_table(:,1),'Color','red') %(N1)60
                legend(app.SPTNPlotTab3,'N60','(N1)60','Location','northeast')
                hold(app.SPTNPlotTab3,'off')
                plot(app.LiqAssessment_VerticalStress,plot_table(:,3),plot_table(:,1),'Color','red') %Plot Total Stress
                hold(app.LiqAssessment_VerticalStress,'on')
                plot(app.LiqAssessment_VerticalStress,plot_table(:,2),plot_table(:,1),'Color','blue') %Plot Eff. Stress
                legend(app.LiqAssessment_VerticalStress,'Total Stress','Effective Stress','Location','northeast')
                hold(app.LiqAssessment_VerticalStress,'off')

                %% Plot results to the table
                InputData = table2cell(app.SoilInvestigationDataPlotTable.Data);
                plot_table_cell = num2cell(plot_table);

                newDisplayData = cell(length(X),22);

                % Plot Table
                newDisplayData(:,1) = InputData(:,1); %Borehole
                newDisplayData(:,2) = InputData(:,2); %x-coordinate
                newDisplayData(:,3) = InputData(:,3); %y-coordinate
                newDisplayData(:,4) = InputData(:,4); %Ground Surface Elevation
                newDisplayData(:,5) = plot_table_cell(:,12); %Depth to The Water Table
                newDisplayData(:,6) = InputData(:,6); %Depth
                newDisplayData(:,7) = InputData(:,8); %Soil Type/Class
                newDisplayData(:,8) = InputData(:,9); %Unit Weight
                newDisplayData(:,9) = InputData(:,10); %Fines Content
                newDisplayData(:,10) = InputData(:,11); %D50
                newDisplayData(:,11) = plot_table_cell(:,10); %rd
                newDisplayData(:,12) = plot_table_cell(:,2); %Eff. Overburden Stress
                newDisplayData(:,13) = plot_table_cell(:,3); %Total Overburden Stress
                newDisplayData(:,14) = InputData(:,7); %N
                newDisplayData(:,15) = plot_table_cell(:,7); %N60
                newDisplayData(:,16) = plot_table_cell(:,8); %(N1)60
                newDisplayData(:,17) = plot_table_cell(:,9); %CSR
                newDisplayData(:,18) = plot_table_cell(:,4); %CRR
                newDisplayData(:,19) = plot_table_cell(:,11); %MSF
                newDisplayData(:,20) = plot_table_cell(:,5); %Safety Factor
                newDisplayData(:,21) = plot_table_cell(:,6); %F.w(z)
                newDisplayData(:,22) = plot_table_cell(:,13); %PL

                t = cell2mat(newDisplayData(:,17));
                t(isnan(t)) = 0;
                newDisplayData(:,17) = num2cell(t);

                app.LiquefactionAssessmentResultsTable.Data = newDisplayData;
                app.LiquefactionAssessmentResultsTable.ColumnName = {'Borehole ID','x-coordinate','y-coordinate','Ground Surface Elevation (m)',...
                    'Depth to The Water Table (m)','Depth (m)','Soil Type/Classification','Unit Weight (kN/m3)',...
                    'Fines Content (%)','D50 (mm)','Stress Reduction Coefficient (rd)','Effective Vertical Stress (kN/m3)',...
                    'Total Vertical Stress (kN/m3)','N','N60','(N1)60','CSR',...
                    'CRR','MSF','Factor of Safety (FS)','F.w(z)','Liquefaction Potential Index (PL)'};
            end

            %Method used in the exported data
            app.MethodStatus = strcat(app.CRR75EquationDropDown.Value,'_');

            %Enable 3D visualization feature
            if numel(app.filepath)>1
                set(app.TobePlottedPanel,'Enable','on');
                set(app.SliceLocationsPanel,'Enable','on');
                set(app.SpacingPanel,'Enable','on');
                set(app.ViewButtonGroup,'Enable','on');
                set(app.PlotMapButton,'Enable','on');
                set(app.PlotToTableButton,'Enable','on');
                set(app.PredictionCoordinatePanel,'Enable','on');
                set(app.ExportResultsButtonTab5,'Enable','on');
            end
            
            value = app.TobePlottedDropDown.Value;
            if strcmp(value,'Liquefaction Potential (PL)')
                set(app.ViewButtonGroup,'enable','off')
            end

            app.ProgressTab2.Text = 'Done!';
        end

        % Button pushed function: ResetButtonTab2
        function ResetButtonTab2Pushed(app, event)
            app.MomentMagnitudeEditField.Value = 6.5;
            app.EnergyRatioCETab2.Value = 0.789;
            app.AtmosphericPressureEditField.Value = 100;
            app.PeakHorizontalAccelerationEditField.Value = 0.2;
            app.ManualMSFInputEditField.Value = 1.19;
            app.BoreholeDiameterCBTab2.Value = app.BoreholeDiameterCBTab2.Items(3);
            app.SamplingMethodCSTab2.Value = app.SamplingMethodCSTab2.Items(1);
            app.LiquefactionAssessmentResultsTable.Data = {}; %Reset Table and Graphs
            cla(app.LiqAssessment_CRR);
            cla(app.LiqAssessment_FS);
            cla(app.LiqAssessment_Fwz);
            cla(app.LiqAssessment_VerticalStress);
        end

        % Button pushed function: ExportResultsButtonTab2
        function ExportResultsButtonTab2Pushed(app, event)
            app.ProgressTab2.Text = 'Processing...';
            pause(0.1);

            cd(app.foldLoc);

            BHID = char(app.SelectBoreholeDropDown.Value{1,1});
            ROW = find(app.BHcode==BHID);
            ExpFold = strcat('Liquefaction_Assessment_',BHID);%%Create Export Folder

            if exist(ExpFold) == 7
                rmdir(ExpFold,'s')
                mkdir(ExpFold);     %%Create Export Folder
            else
                mkdir(ExpFold);
            end

            ExpFoldLoc = strcat(app.foldLoc,'\',ExpFold,'\');
            exportname = strcat(app.MethodStatus,string(app.BHcode{ROW}));
            exportname = strcat(ExpFoldLoc,'Liquefaction_Assessment_',exportname,'.xls');
            exportdata = app.LiquefactionAssessmentResultsTable.Data;
            exportdatacol = app.LiquefactionAssessmentResultsTable.ColumnName;
            writecell([exportdatacol.';exportdata],exportname);

            exportfigname1 = strcat(ExpFoldLoc,'N_N60_(N1)60_',BHID,'.jpg');
            exportgraphics(app.SPTNPlotTab3,exportfigname1);
            exportfigname2 = strcat(ExpFoldLoc,'FC_',BHID,'.jpg');
            exportgraphics(app.FCPlot,exportfigname2)
            exportfigname3 = strcat(ExpFoldLoc,'D50_',BHID,'.jpg');
            exportgraphics(app.D50Plot,exportfigname3);

            exportfigname4 = strcat(ExpFoldLoc,'Vertical Stress Profile_',BHID,'.jpg');
            exportgraphics(app.LiqAssessment_VerticalStress,exportfigname4)
            exportfigname5 = strcat(ExpFoldLoc,'CRR_',BHID,'.jpg');
            exportgraphics(app.LiqAssessment_CRR,exportfigname5)
            exportfigname6 = strcat(ExpFoldLoc,'FS_',BHID,'.jpg');
            exportgraphics(app.LiqAssessment_FS,exportfigname6)
            exportfigname7 = strcat(ExpFoldLoc,'F.w(z)_',BHID,'.jpg');
            exportgraphics(app.LiqAssessment_Fwz,exportfigname7)

            app.ProgressTab2.Text = 'Done!';
        end

        % Value changed function: TobePlottedDropDown
        function TobePlottedValueChanged(app, event)
            value = app.TobePlottedDropDown.Value;
            if strcmp(value,'Liquefaction Potential (PL)')
                set(app.ViewButtonGroup,'enable','off')
            else
                set(app.ViewButtonGroup,'enable','on')
            end
        end

        % Selection changed function: ViewButtonGroup
        function ViewButtonGroupSelectionChanged(app, event)
            if app.ThreeDViewButton.Value==1
                view(app.ThreeDimensionalPlot,3)
            elseif app.TopViewButton.Value==1
                view(app.ThreeDimensionalPlot,0,90)
            elseif app.XZViewButton.Value==1
                view(app.ThreeDimensionalPlot,0,0)
            elseif app.YZViewButton.Value==1
                view(app.ThreeDimensionalPlot,90,0)
            end
        end

        % Button pushed function: PlotMapButton
        function PlotMapButtonPushed(app, event)

            app.ProgressTab5.Text = 'Processing...';
            pause(0.00001);

            datasetGG = zeros([height(app.MyDataArr),width(app.MyDataArr{1})]); %datasetGG is the dataset for Ground Surface Elevation and Groundwater Level Interpolation
            for loop1 = 1:height(app.MyDataArr)
                datasetGG(loop1,:) = app.MyDataArr{loop1}(1,:);
            end

            datasettab = cat(1,app.MyData{:});
            dataset = cat(2,cat(1,app.MyDataArr{:}),table2array(datasettab(:,12))); %dataset is the dataset for SPT-N, Soil Type/Class, % Passing #200 Sieve, and D50 Interpolation

            categ = categorical(table2cell(datasettab(:,8)));
            classes = string(num2cell(1:numel(categories(categ))));
            classesstr = categories(categ);
            classlist= double(renamecats(categ,classes));
            dataset(:,8) = classlist;


            %%%%%%%

            app.valuexyz = app.TobePlottedDropDown.Value; %Selected geotechnical properties/liquefaction analysis results to be plotted
            xslice = app.xcoordinateSliceEditField.Value;
            yslice = app.ycoordinateSliceEditField.Value;
            zslice = app.zcoordinateSliceEditField.Value;


            %Study area grid
            realmaxX=ceil(max(dataset(:,2))); %max & min X coordinate
            realminX=floor(min(dataset(:,2)));

            realmaxY=ceil(max(dataset(:,3))); %max & min Y coord
            realminY=floor(min(dataset(:,3)));

            realmaxZ= ceil(max(dataset(:,4))+1); %max & min Z coord
            realminZ=-20;

            rangeX = app.xspacingEditField.Value; %Input X Spacing in meter
            rangeY = app.yspacingEditField.Value; %Input Y Spacing in meter
            rangeZ = app.zspacingEditField.Value; %Input Z Spacing in meter

            xx = (realminX:rangeX:realmaxX); %X range
            yy = (realminY:rangeY:realmaxY); %Y range
            zz = (realminZ:rangeZ:realmaxZ); %Z range

            if strcmp(app.valuexyz,'Ground Surface Elevation') || strcmp(app.valuexyz,'Groundwater Level') %Actions for the plotting of interpolated Ground Surface Elevation or Groundwater Level
                [Xgrid,Ygrid] = meshgrid(xx,yy); %Create grid containing the coordinates for interpolation
                Xgrid = double(Xgrid);
                Ygrid = double(Ygrid);

                Xtest = double(datasetGG(:,2)); %Known X coordinate for scatteredInterpolant
                Ytest = double(datasetGG(:,3)); %Known Y coordinate for scatteredInterpolant

                if strcmp(app.valuexyz,'Ground Surface Elevation') %Known GSE or GWL data points for scatteredInterpolant
                    Vtest = double(datasetGG(:,4)); %Known GSE
                elseif strcmp(app.valuexyz,'Groundwater Level')
                    Vtest = double(datasetGG(:,5)); %Known GWL
                end

                F1 = scatteredInterpolant(Xtest,Ytest,Vtest,'linear','none'); %Get interpolated GSE or GWL data using linear interpolation method
                F2 = round(F1(Xgrid,Ygrid),2);
                format shortG

                app.s = surf(app.ThreeDimensionalPlot,Xgrid,Ygrid,F2); %Plot the interpolated GSE or GWL into the graph
                grid(app.ThreeDimensionalPlot,'on')
                app.s.EdgeColor = 'none';
                pbaspect(app.ThreeDimensionalPlot,[10,10,2])

                xlabel(app.ThreeDimensionalPlot,'x-coordinate','FontWeight','bold')
                ylabel(app.ThreeDimensionalPlot,'y-coordinate','FontWeight','bold')
                zlabel(app.ThreeDimensionalPlot,'z-coordinate','FontWeight','bold')

                if strcmp(app.valuexyz,'Ground Surface Elevation') %Set for interpolated GSE plot
                    title(app.ThreeDimensionalPlot,'Ground Surface Elevation');

                    colormap(app.ThreeDimensionalPlot,parula(20))
                    a = colorbar(app.ThreeDimensionalPlot);
                    caxis(app.ThreeDimensionalPlot,[min(F2,[],'all'),max(F2,[],'all')]); %Set  minimum and maximum GSE value for the colorbar
                    %                 a.FontSize = 11;
                    a.Label.String = 'Ground Surface Elevation (m)';

                elseif strcmp(app.valuexyz,'Groundwater Level') %Set for interpolated GWL plot
                    title(app.ThreeDimensionalPlot,'Groundwater Level');

                    colormap(app.ThreeDimensionalPlot,parula(20))
                    a = colorbar(app.ThreeDimensionalPlot);
                    caxis(app.ThreeDimensionalPlot,[min(F2,[],'all'),max(F2,[],'all')]); %Set  minimum and maximum GWL value for the colorbar
                    %                 a.FontSize = 11;
                    a.Label.String = 'Groundwater Level (m)';

                end

            elseif strcmp(app.valuexyz,'SPT-N') || strcmp(app.valuexyz,'Soil Type') || strcmp(app.valuexyz,'% Passing #200 Sieve') || strcmp(app.valuexyz,'D50') %Actions for the plotting of interpolated SPT-N, Soil Type, % Passing #200 Sieve, or D50

                %Get Predicted Ground Surface Elevation
                Xtest = double(datasetGG(:,2)); %Known X coordinate for scatteredInterpolant
                Ytest = double(datasetGG(:,3)); %Known Y coordinate for scatteredInterpolant
                Vtest = double(datasetGG(:,4)); %Known GSE
                predxcoord= app.xcoordinatePredictionEditField.Value;
                predycoord= app.ycoordinatePredictionEditField.Value;

                F1 = scatteredInterpolant(Xtest,Ytest,Vtest,'linear','none'); %Get interpolated GSE data using linear interpolation method
                GSE = F1(predxcoord,predycoord);
                depthlist = (0:1:20);
                close all;

                %Prediction at the selected x-y coordinate
                [Xgrid,Ygrid,Zgrid] = meshgrid(xx,yy,(GSE-depthlist)); %Create grid containing the coordinates for interpolation
                Xgrid = double(Xgrid);
                Ygrid = double(Ygrid);
                Zgrid = double(round(Zgrid,2));

                Xtest = double(dataset(:,2)); %Known X coordinate for griddata
                Ytest = double(dataset(:,3)); %Known Z coordinate for griddata
                Ztest = double(round(dataset(:,4)-dataset(:,6),2)); %Known Z coordinate for griddata

                if strcmp(app.valuexyz,'SPT-N') %Known SPT-N, Soil Type, % Passing #200 Sieve, or D50 data points for scatteredInterpolant
                    Vtest = double(dataset(:,7)); %Known SPT-N
                elseif strcmp(app.valuexyz,'Soil Type')
                    Vtest = double(dataset(:,8)); %Known Soil Type
                elseif strcmp(app.valuexyz,'% Passing #200 Sieve')
                    Vtest = double(dataset(:,10)); %Known FC
                elseif strcmp(app.valuexyz,'D50')
                    Vtest = double(dataset(:,11)); %Known D50
                end

                F1 = griddata(Xtest,Ytest,Ztest,Vtest,Xgrid,Ygrid,Zgrid,'linear'); %First, use linear interpolation just to get the NaN points (locations)
                findisnan = find(isnan(F1));
                F2 = F1;

                app.s = slice(app.ThreeDimensionalPlot,Xgrid,Ygrid,Zgrid,F2,xslice,yslice,zslice); %Plot the interpolated SPT-N, Soil Type, % Passing #200 Sieve, or D50 into the graph
                grid(app.ThreeDimensionalPlot,'on')
                set(app.s,'edgecolor','none');
                pbaspect(app.ThreeDimensionalPlot,[10,10,2])

                xlabel(app.ThreeDimensionalPlot,'x-coordinate','FontWeight','bold')
                ylabel(app.ThreeDimensionalPlot,'y-coordinate','FontWeight','bold')
                zlabel(app.ThreeDimensionalPlot,'z-coordinate','FontWeight','bold')

                if strcmp(app.valuexyz,'SPT-N') %Set for interpolated SPT-N plot
                    title(app.ThreeDimensionalPlot,'SPT-N Value Prediction')
                    colormap(app.ThreeDimensionalPlot,parula(20))
                    a = colorbar(app.ThreeDimensionalPlot);
                    caxis(app.ThreeDimensionalPlot,[min(F2,[],'all'),max(F2,[],'all')]);
                    a.Label.String = 'SPT-N Value';

                elseif strcmp(app.valuexyz,'Soil Type') %Set for interpolated Soil Type plot
                    title(app.ThreeDimensionalPlot,'Soil Type Prediction')
                    colormap(app.ThreeDimensionalPlot,parula(numel(classesstr)));
                    numclassesx2 = numel(classesstr)*2; %Number of Segments
                    numclassesmin1 = numel(classesstr)-1; %Number of classes - 1
                    seglength = numclassesmin1/numclassesx2; %Segment Length
                    segments = (1:2:numclassesx2);
                    colorticks = 1+(seglength*segments);
                    
                    a = colorbar(app.ThreeDimensionalPlot,'Ticks',colorticks,'TickLabels',classesstr);
                    a.Label.String = 'Soil Type';

                elseif strcmp(app.valuexyz,'% Passing #200 Sieve') %Set for interpolated % Passing #200 Sieve plot
                    title(app.ThreeDimensionalPlot,'% Passing #200 Sieve Prediction')
                    colormap(app.ThreeDimensionalPlot,parula(20))
                    a = colorbar(app.ThreeDimensionalPlot);
                    caxis(app.ThreeDimensionalPlot,[min(F2,[],'all'),max(F2,[],'all')])
                    a.Label.String = '% Passing #200 Sieve (%)';

                elseif strcmp(app.valuexyz,'D50') %Set for interpolated D50 plot
                    title(app.ThreeDimensionalPlot,'D50 Prediction')
                    colormap(app.ThreeDimensionalPlot,parula(20))
                    a = colorbar(app.ThreeDimensionalPlot);
                    caxis(app.ThreeDimensionalPlot,[min(F2,[],'all'),max(F2,[],'all')]);
                    a.Label.String = 'D50 (mm)';

                end

            elseif strcmp(app.valuexyz,'Safety Factor (FS)') || strcmp(app.valuexyz,'Liquefaction Potential (PL)')
                app.BA = dataset;

                app.method = app.CRR75EquationDropDown.Value;

                if strcmp(app.method,'Japan Design Specification of Highway Bridge')
                    %% Liquefaction Potential Calculation
                    %Set Coefficient
                    cZ = 0.85;
                    cG = 1.2;
                    cI = 1.1;
                    kSO = 0.15;
                    kS = cZ*cG*cI*kSO;

                    %Magnitude
                    app.Mw = app.MomentMagnitudeEditField.Value;

                    %Create Table
                    X = classlist;
                    liq_table = zeros([length(X),22]);

                    liq_table(:,1) = app.BA(:,12); %Participates in Liquefaction?
                    liq_table(:,2) = app.BA(:,6);%Depth
                    liq_table(:,3) = app.BA(:,4)-app.BA(:,5);%WT Depth
                    liq_table(:,4) = liq_table(:,2)-liq_table(:,3);%Depth from WT
                    liq_table(:,5) = app.BA(:,7);%SPT-N
                    liq_table(:,21:22) = app.BA(:,2:3); % Coordinate X Y
                    liq_table(:,12) = app.BA(:,9);

                    %% Sort based on coordinate
                    liq_table = sortrows(liq_table,[21 22 2]);

                    helpcol = liq_table(:,2);
                    helpcol(helpcol<0) = NaN;
                    liq_table(:,2) = helpcol;

                    %Sigmav0(Total overburden pressure)
                    liq_table(:,6) = liq_table(:,12).*liq_table(:,2);

                    %Sigmav0(in kN/cm2)
                    liq_table(:,7) = liq_table(:,6)./100;

                    %Sigma'v0(Effective Vertical Stress)
                    helpcol = zeros([length(X),1]);

                    for loop1 = 1:length(X)
                        if liq_table(loop1,2) < liq_table(loop1,3)
                            helpcol(loop1) = liq_table(loop1,2).*liq_table(loop1,12);
                        else
                            helpcol(loop1) = (liq_table(loop1,2)-liq_table(loop1,3)).*(liq_table(loop1,12)-9.81)+(liq_table(loop1,3).*liq_table(loop1,12));
                        end
                    end

                    liq_table(:,8) = helpcol;

                    %Sigma'v0(in kN/cm2)
                    liq_table(:,9) = liq_table(:,8)./100;

                    %D50
                    liq_table(:,10) = app.BA(:,11);

                    %FC
                    liq_table(:,11) = app.BA(:,10);

                    %R1
                    liq_table(:,13) = 0.0882*sqrt(liq_table(:,5)./(liq_table(:,8)+0.7));

                    %R2
                    helpcol = zeros([length(X),1]);

                    for loop1 = 1:length(X)
                        if liq_table(loop1,10) >= 0.02 && liq_table(loop1,10) <=0.05
                            helpcol(loop1) = 0.19;
                        elseif liq_table(loop1,10) > 0.05 && liq_table(loop1,10) <= 0.6
                            helpcol(loop1) = 0.225*log10(0.35/liq_table(loop1,10));
                        elseif liq_table(loop1,10) > 0.6 && liq_table(loop1,10) <= 2
                            helpcol(loop1) = -0.05;
                        end
                    end

                    liq_table(:,14) = helpcol;

                    % R3
                    helpcol = zeros([length(X),1]);

                    for loop1 = 1:length(X)
                        if liq_table(loop1,11) >= 0 && liq_table(loop1,11) <= 40
                            helpcol(loop1) = 0;
                        elseif liq_table(loop1,11) > 40 && liq_table(loop1,11) <= 100
                            helpcol(loop1) = 0.004*liq_table(loop1,11)-0.16;
                        end
                    end

                    liq_table(:,15) = helpcol;

                    %R
                    liq_table(:,16) = liq_table(:,13) + liq_table(:,14) + liq_table(:,15);

                    %γd (rd)
                    liq_table(:,17) = 1-0.015.*(liq_table(:,2));

                    %L
                    liq_table(:,18) = liq_table(:,17).*kS.*(liq_table(:,7)./liq_table(:,9));

                    %FL
                    helpcol = zeros([length(X),1]);

                    for loop1 = 1:length(X)
                        if liq_table(loop1,1) == 0
                            helpcol(loop1) = 1;
                        else
                            helpcol(loop1) = liq_table(loop1,16)/liq_table(loop1,18);
                        end
                    end

                    liq_table(:,19) = helpcol;

                    %Risk
                    helpcol = zeros([length(X),1]);


                    for loop1 = 1:length(X)
                        if liq_table(loop1,19) < 1
                            helpcol(loop1) = 1;
                        elseif liq_table(loop1,19) >= 1
                            helpcol(loop1) = 2;
                        end
                    end

                    liq_table(:,20) = helpcol;


                    %% PL-Value
                    % Create PL-Value Calculation Table
                    PL_table = zeros([length(X),11]);

                    % Coordinate
                    PL_table(:,1:2) = liq_table(:,21:22);

                    % Depth
                    PL_table(:,3) = liq_table(:,2);

                    %Fs
                    Fs1 = liq_table(:,19);
                    Fs1(Fs1<0) = 0;
                    Fs = liq_table(:,19);
                    Fs(Fs>1) = 1;
                    Fs(Fs<0) = 0;
                    PL_table(:,4) = Fs;

                    %Liquefaction Risk
                    PL_table(:,5) = liq_table(:,20);

                    %w(z)
                    PL_table(:,6) = 10-(0.5.*PL_table(:,3));

                    %F
                    helpcol = zeros([length(X),1]);


                    for loop1 = 1:length(X)
                        if isnan(PL_table(loop1,3))
                            helpcol(loop1) = NaN;
                        elseif PL_table(loop1,5) == 1 ||PL_table(loop1,5) == 2
                            helpcol(loop1) = 1-PL_table(loop1,4);
                        else
                            helpcol(loop1) = 0;
                        end
                    end

                    PL_table(:,7) = helpcol;

                    %int(w)
                    helpcol = zeros([length(X),1]);

                    for loop1 = 1:length(X)
                        if isnan(PL_table(loop1,3))
                            helpcol(loop1) = NaN;
                        elseif PL_table(loop1,3) == 0 || PL_table(loop1,3) < 1
                            helpcol(loop1) = 0;
                        else
                            helpcol(loop1) = (PL_table(loop1,6) + PL_table(loop1-1,6))/2.*(PL_table(loop1,3)-PL_table(loop1-1,3));
                        end
                    end

                    PL_table(:,8) = helpcol;

                    %F.int(w)
                    PL_table(:,9) = PL_table(:,7).*PL_table(:,8);

                    %Cumulative
                    helpcol = zeros([length(X),1]);

                    for loop1 = 1:length(X)
                        if isnan(PL_table(loop1,3))
                            helpcol(loop1) = NaN;
                        elseif PL_table(loop1,3) == 0 || PL_table(loop1,3) < 1
                            helpcol(loop1) = PL_table(loop1,9);
                        else
                            helpcol(loop1) = helpcol(loop1-1) + PL_table(loop1,9);
                        end
                    end

                    PL_table(:,10) = helpcol;

                    %%
                    %PL
                    helpcol = zeros([length(X),1]);

                    for loop1 = 1:length(X)
                        if loop1 == length(X)
                            helpcol(loop1) = PL_table(loop1,10);
                        elseif PL_table(loop1+1,3) == 0
                            helpcol(loop1) = PL_table(loop1,10);
                        else
                            helpcol(loop1) = NaN;
                        end
                    end

                    PL_table(:,11) = helpcol;

                else

                    %% Input Data
                    %CE
                    value = app.EnergyRatioCETab2.Value;
                    app.CE = value;

                    %CB
                    value = app.BoreholeDiameterCBTab2.Value;
                    if strcmp(value,'65-115 mm')
                        app.CB = 1;
                    elseif strcmp(value,'150 mm')
                        app.CB = 1.05;
                    else
                        app.CB = 1.15;
                    end

                    %CS
                    value = app.SamplingMethodCSTab2.Value;
                    if strcmp(value,'Standard Sampler')
                        app.CS = 1;
                    else
                        app.CS = 1.1;
                    end

                    %AtmP
                    value = app.AtmosphericPressureEditField.Value;
                    app.AtmP = value;

                    value = app.CRR75EquationDropDown.Value;
                    if strcmp(value,'Korean Liquefaction Assessment Method')
                        app.AtmP = 96; % kPa
                    end

                    %Peak Horizontal Acceleration
                    value = app.PeakHorizontalAccelerationEditField.Value;
                    app.amax = value;

                    %Moment Magnitude
                    value = app.CRR75EquationDropDown.Value;
                    if strcmp(value,'Korean Liquefaction Assessment Method')
                        app.Mw = 6.5;
                    else
                        app.Mw = app.MomentMagnitudeEditField.Value;
                    end

                    %Create Table
                    X = categ;
                    liq_table = zeros([length(X),26]);

                    liq_table(:,1) = app.BA(:,12); %Participate in Liquefaction?
                    liq_table(:,2) = app.BA(:,10);%Finer than 0.075 mm Sieve (%FC)
                    liq_table(:,3) = app.BA(:,6);%Depth from Ground Surface
                    liq_table(:,4) = app.BA(:,4)-app.BA(:,5);%Water Table Depth

                    %Depth from WT
                    liq_table(:,5) = liq_table(:,3)-liq_table(:,4);

                    %Rod Length
                    liq_table(:,6) = liq_table(:,3); %1.5 from Estimation

                    %Cr (Rod Length Coefficient)
                    helpcol1 = liq_table(:,6);
                    helpcol2 = zeros([length(X),1]);

                    for loop1 = 1:length(X)
                        if helpcol1(loop1) == 0
                            helpcol2(loop1) = 0;
                        elseif helpcol1(loop1)<3
                            helpcol2(loop1) = 0.75;
                        elseif helpcol1(loop1) >=3 && helpcol1(loop1)<4
                            helpcol2(loop1) = 0.8;
                        elseif helpcol1(loop1)>=4 && helpcol1(loop1)<6
                            helpcol2(loop1) = 0.85;
                        elseif helpcol1(loop1)>=6 && helpcol1(loop1)<10
                            helpcol2(loop1) = 0.95;
                        else
                            helpcol2(loop1) = 1;
                        end
                    end

                    liq_table(:,7) = helpcol2;

                    %N-SPT
                    liq_table(:,8) = app.BA(:,7);

                    %N60
                    liq_table(:,9) = round(app.BA(:,7)*(app.CB)*(app.CS)*(app.CE).*liq_table(:,7));

                    %Unit Weight(Gamma)
                    liq_table(:,10) = app.BA(:,9);

                    %Gamma'
                    helpcol1 = liq_table(:,3);
                    helpcol1_1 = liq_table(:,4);
                    helpcol1_2 = liq_table(:,10);
                    helpcol2 = zeros([length(X),1]);

                    for loop1 = 1:length(X)
                        if helpcol1(loop1) >= helpcol1_1(loop1)
                            helpcol2(loop1) = helpcol1_2(loop1);
                        else
                            helpcol2(loop1) = helpcol1_2(loop1)-9.81;
                        end
                    end

                    liq_table(:,11) = helpcol2;

                    %Sigma'v0(Effective Vertical Stress)
                    helpcol1 = liq_table(:,3);
                    helpcol1_1 = liq_table(:,4);
                    helpcol1_2 = liq_table(:,10);
                    helpcol2 = zeros([length(X),1]);

                    for loop1 = 1:length(X)
                        if helpcol1(loop1) < helpcol1_1(loop1)
                            helpcol2(loop1) = helpcol1(loop1).*helpcol1_2(loop1);
                        else
                            helpcol2(loop1) = (helpcol1(loop1)-helpcol1_1(loop1)).*(helpcol1_2(loop1)-9.81)+(helpcol1_1(loop1).*helpcol1_2(loop1));
                        end
                    end

                    liq_table(:,12) = helpcol2;

                    %Cn(Overburden Coefficient)
                    helpcol1 = liq_table(:,12);
                    helpcol2 = zeros([length(X),1]);

                    value = app.CRR75EquationDropDown.Value;
                    value2 = app.AtmP;
                    if strcmp(value,"Youd et al")
                        for loop1 = 1:length(X)
                            if  (value2/helpcol1(loop1))^0.5 > 1.7
                                helpcol2(loop1) = 1.7;
                            else
                                helpcol2(loop1) = (value2/helpcol1(loop1))^0.5;
                            end
                        end
                    else
                        for loop1 = 1:length(X)
                            if 2.2/(1.2+(helpcol1(loop1)/value2)) > 1.7
                                helpcol2(loop1) = 1.7;
                            else
                                helpcol2(loop1) = 2.2/(1.2+(helpcol1(loop1)/value2));
                            end
                        end
                    end

                    liq_table(:,13) = helpcol2;

                    %(N1)60
                    liq_table(:,14) = round(liq_table(:,9).*liq_table(:,13));

                    %Alpha (Fines Content Correction)
                    helpcol1 = liq_table(:,2);
                    helpcol2 = zeros([length(X),1]);

                    for loop1 = 1:length(X)
                        if helpcol1(loop1) <= 5
                            helpcol2(loop1) = 0;
                        elseif helpcol1(loop1) > 5 && helpcol1(loop1) < 35
                            helpcol2(loop1) = exp(1.76-(190/helpcol1(loop1)^2));
                        else
                            helpcol2(loop1) = 5;
                        end
                    end

                    liq_table(:,15) = helpcol2;

                    %Beta (Fines Content Correction)
                    helpcol1 = liq_table(:,2);
                    helpcol2 = zeros([length(X),1]);

                    for loop1 = 1:length(X)
                        if helpcol1(loop1) <= 5
                            helpcol2(loop1) = 1;
                        elseif helpcol1(loop1) > 5 && helpcol1(loop1) < 35
                            helpcol2(loop1) = 0.99+helpcol1(loop1)^1.5/1000;
                        else
                            helpcol2(loop1) = 1.2;
                        end
                    end

                    liq_table(:,16) = helpcol2;

                    %(N1)60cs (Corrected(N1)60)
                    liq_table(:,17) = round(liq_table(:,15)+liq_table(:,16).*liq_table(:,14));

                    %Mw (Magnitude)
                    value = app.CRR75EquationDropDown.Value;
                    if strcmp(value,'Korean Liquefaction Assessment Method')
                        liq_table(:,18) = 6.5;
                    else
                        liq_table(:,18) = app.Mw;
                    end

                    %MSF (Revised Idriss Scaling Factor) ***Check This
                    value = app.CRR75EquationDropDown.Value;

                    if strcmp(value,'Seed and Idriss')
                        liq_table(:,19) = app.ManualMSFInputEditField.Value;
                    elseif strcmp(value,'Korean Liquefaction Assessment Method')
                        liq_table(:,19) = (app.Mw/7.5).^1.19;
                    else
                        value2 = app.MagnitudeScalingFactorMSFDropDown.Value;
                        if strcmp(value2,'Input MSF Value')
                            liq_table(:,19) = app.ManualMSFInputEditField.Value;
                        else
                            liq_table(:,19) = 10^2.24./(liq_table(:,18).^2.56);
                        end
                    end

                    %CRR
                    if strcmp(value,'Youd et al')
                        liq_table(:,20) = 1./(34-liq_table(:,17))+(liq_table(:,17)/135)+(50/(10*liq_table(:,17)+45).^2)'-(1/200);
                    else
                        liq_table(:,20) = 1./(34-liq_table(:,14))+(liq_table(:,14)/135)+(50/(10*liq_table(:,14)+45).^2)'-(1/200);
                    end

                    %amax (g)
                    liq_table(:,21) = app.amax;

                    %Sigmav0(Total overburden pressure)
                    liq_table(:,22) = liq_table(:,3).*liq_table(:,10);

                    %rd (stress reduction coefficient)
                    value = app.CRR75EquationDropDown.Value;

                    if strcmp(value,'Seed and Idriss')
                        for loop1 = 1:length(X)
                            if liq_table(loop1,3) <=9.15
                                liq_table(loop1,23) = 1-0.00765*liq_table(loop1,3);
                            else
                                liq_table(loop1,23) = 1.174-0.0267*liq_table(loop1,3);
                            end
                        end
                    elseif strcmp(value,'Korean Liquefaction Assessment Method')
                        liq_table(:,23) = 1;
                    elseif strcmp(value,'Youd et al')
                        liq_table(:,23) = (1-(0.4113.*liq_table(:,3).^0.5)+0.04052.*liq_table(:,3)+(0.001753.*liq_table(:,3).^1.5))./(1-(0.4177.*liq_table(:,3).^0.5)+0.05729.*liq_table(:,3)-(0.006205.*liq_table(:,3).^1.5)+(0.00121.*liq_table(:,3).^2));
                    end

                    %CSR
                    liq_table(:,24) = 0.65.*liq_table(:,21).*liq_table(:,22)./liq_table(:,12).*liq_table(:,23);

                    %FS
                    helpcol1 = liq_table(:,1);
                    helpcol1_1 = liq_table(:,20);
                    helpcol1_2 = liq_table(:,24);
                    helpcol1_3 = liq_table(:,19);
                    helpcol1_4 = liq_table(:,3);
                    helpcol1_5 = liq_table(:,4);
                    helpcol2 = zeros([length(X),1]);

                    for loop1 = 1:length(X)
                        if helpcol1(loop1) == 0 || helpcol1_4(loop1) < helpcol1_5(loop1)
                            helpcol2(loop1) = 1;
                        elseif isnan(helpcol1_2(loop1))
                            helpcol2(loop1) = 0;
                        else
                            helpcol2(loop1) = helpcol1_1(loop1)./helpcol1_2(loop1).*helpcol1_3(loop1);
                        end
                    end

                    liq_table(:,25) = helpcol2;

                    %Risk
                    helpcol1_1 = liq_table(:,1);
                    helpcol1_3 = liq_table(:,25);
                    helpcol1_4 = liq_table(:,3);
                    helpcol2 = zeros([length(X),1]);

                    for loop1 = 1:length(X)
                        if helpcol1_1(loop1) == 0 || helpcol1_4(loop1) == 0
                            helpcol2(loop1) = 3;
                        elseif helpcol1_3(loop1) <= 1
                            helpcol2(loop1) = 1;
                        elseif helpcol1_3(loop1) > 1
                            helpcol2(loop1) = 2;
                        end
                    end

                    liq_table(:,26) = helpcol2;

                    liq_table = cat(2,app.BA(:,2:3),liq_table);


                    %% PL-Value
                    % Create PL-Value Calculation Table
                    PL_table = zeros([length(X),11]);

                    % Coordinate
                    PL_table(:,1:2) = liq_table(:,1:2);

                    % Depth
                    PL_table(:,3) = liq_table(:,5);

                    %Fs
                    Fs1 = liq_table(:,27);
                    Fs1(Fs1<0) = 0;
                    Fs = liq_table(:,27);
                    Fs(Fs>1) = 1;
                    Fs(Fs<0) = 0;
                    PL_table(:,4) = Fs;
                    %     PL_table(:,4) = liq_table(:,25);

                    %Liquefaction Risk
                    PL_table(:,5) = liq_table(:,28);

                    %w(z)
                    PL_table(:,6) = 10-(0.5.*PL_table(:,3));

                    %F
                    helpcol1 = PL_table(:,5);
                    helpcol1_1 = PL_table(:,4);
                    helpcol2 = zeros([length(X),1]);

                    for loop1 = 1:length(X)
                        if helpcol1(loop1) == 1 || helpcol1(loop1) == 2
                            helpcol2(loop1) = 1-helpcol1_1(loop1);
                        else
                            helpcol2(loop1) = 0;
                        end
                    end

                    PL_table(:,7) = helpcol2;

                    %int(w)
                    helpcol1 = PL_table(:,3);
                    helpcol1_1 = PL_table(:,6);
                    helpcol2 = zeros([length(X),1]);

                    for loop1 = 1:length(X)
                        if helpcol1(loop1) == 0
                            helpcol2(loop1) = 0;
                        else
                            %Check this
                            helpcol2(loop1) = (helpcol1_1(loop1) + helpcol1_1(loop1-1))/2.*(helpcol1(loop1)-helpcol1(loop1-1));
                        end
                    end

                    PL_table(:,8) = helpcol2;

                    %F.int(w)
                    PL_table(:,9) = PL_table(:,7).*PL_table(:,8);

                    %Cumulative
                    helpcol1 = PL_table(:,3);
                    helpcol1_1 = PL_table(:,9);
                    helpcol2 = zeros([length(X),1]);


                    for loop1 = 1:length(X)
                        if helpcol1(loop1) == 0
                            helpcol2(loop1) = helpcol1_1(loop1);
                        else
                            %Check This
                            helpcol2(loop1) = helpcol2(loop1-1) + helpcol1_1(loop1);
                        end
                    end

                    PL_table(:,10) = helpcol2;

                    %%
                    %PL
                    helpcol1 = PL_table(:,3);
                    helpcol1_1 = PL_table(:,10);
                    helpcol2 = zeros([length(X),1]);

                    for loop1 = 1:length(X)
                        if loop1 == length(X)
                            helpcol2(loop1) = helpcol1_1(loop1);
                        elseif helpcol1(loop1+1) == 0
                            helpcol2(loop1) = helpcol1_1(loop1);
                        else
                            helpcol2(loop1) = NaN;
                        end
                    end

                    PL_table(:,11) = helpcol2;
                end

                if strcmp(app.valuexyz,'Safety Factor (FS)') %Known FS or LPI data points for scatteredInterpolant
                    %Get Predicted Ground Surface Elevation
                    Xtest = double(datasetGG(:,2)); %Known X coordinate for scatteredInterpolant
                    Ytest = double(datasetGG(:,3)); %Known Y coordinate for scatteredInterpolant
                    Vtest = double(datasetGG(:,4)); %Known GSE
                    predxcoord= app.xcoordinatePredictionEditField.Value;
                    predycoord= app.ycoordinatePredictionEditField.Value;

                    F1 = scatteredInterpolant(Xtest,Ytest,Vtest,'linear','none'); %Get interpolated GSE or GWL data using linear interpolation method
                    GSE = F1(predxcoord,predycoord);
                    depthlist = (0:1:20);
                    close all;

                    %%
                    %Prediction at a selected x-y coordinate
                    [Xgrid,Ygrid,Zgrid] = meshgrid(xx,yy,(GSE-depthlist)); %Create grid containing the coordinates for interpolation
                    Xgrid = double(Xgrid);
                    Ygrid = double(Ygrid);
                    Zgrid = double(Zgrid);

                    Xtest = double(dataset(:,2)); %Known X coordinate for griddata
                    Ytest = double(dataset(:,3)); %Known Z coordinate for griddata
                    Ztest = double(dataset(:,4)-dataset(:,6)); %Known Z coordinate for griddata
                    Vtest = double(Fs1); %Known FS

                    F1 = griddata(Xtest,Ytest,Ztest,Vtest,Xgrid,Ygrid,Zgrid,'linear'); %First, use linear interpolation just to get the NaN points (locations)
                    findisnan = find(isnan(F1));
                    F2 = F1;

                    app.s = slice(app.ThreeDimensionalPlot,Xgrid,Ygrid,Zgrid,F2,xslice,yslice,zslice); %Plot the interpolated SPT-N, Soil Type, % Passing #200 Sieve, or D50 into the graph
                    grid(app.ThreeDimensionalPlot,'on')
                    set(app.s,'edgecolor','none');
                    pbaspect(app.ThreeDimensionalPlot,[10,10,2])

                    xlabel(app.ThreeDimensionalPlot,'x-coordinate','FontWeight','bold')
                    ylabel(app.ThreeDimensionalPlot,'y-coordinate','FontWeight','bold')
                    zlabel(app.ThreeDimensionalPlot,'z-coordinate','FontWeight','bold')

                    title(app.ThreeDimensionalPlot,'Safety Factor (FS)')
                    colormap(app.ThreeDimensionalPlot,parula(20))
                    a = colorbar(app.ThreeDimensionalPlot);
                    caxis(app.ThreeDimensionalPlot,[min(F2,[],'all'),max(F2,[],'all')]);
                    a.Label.String = 'Safety Factor (FS)';

                elseif strcmp(app.valuexyz,'Liquefaction Potential (PL)')
                    [Xgrid,Ygrid] = meshgrid(xx,yy); %Create grid containing the coordinates for interpolation
                    Xgrid = double(Xgrid);
                    Ygrid = double(Ygrid);

                    Xtest = double(datasetGG(:,2)); %Known X coordinate for scatteredInterpolant
                    Ytest = double(datasetGG(:,3)); %Known Y coordinate for scatteredInterpolant

                    PL = [PL_table(:,1:3),PL_table(:,11)];
                    idx=any(isnan(PL(:,3)) | isnan(PL(:,4)),2);
                    PL(idx,:)=[];
                    Vtest = double(PL(:,4)); %Known PL

                    F1 = scatteredInterpolant(Xtest,Ytest,Vtest,'linear','none'); %Get interpolated GSE or GWL data using linear interpolation method
                    F2 = F1(Xgrid,Ygrid);

                    app.s = surf(app.ThreeDimensionalPlot,Xgrid,Ygrid,F2); %Plot the interpolated GSE or GWL into the graph
                    grid(app.ThreeDimensionalPlot,'on')
                    app.s.EdgeColor = 'none';
                    pbaspect(app.ThreeDimensionalPlot,[10,10,2])

                    dtt = app.s.DataTipTemplate;
                    dtt.DataTipRows(3).Label = 'PL';

                    xlabel(app.ThreeDimensionalPlot,'x-coordinate','FontWeight','bold')
                    ylabel(app.ThreeDimensionalPlot,'y-coordinate','FontWeight','bold')
                    zlabel(app.ThreeDimensionalPlot,'z-coordinate','FontWeight','bold')

                    title(app.ThreeDimensionalPlot,'Liquefaction Potential (PL)');

                    colormap(app.ThreeDimensionalPlot,parula(20))
                    a = colorbar(app.ThreeDimensionalPlot);
                    caxis(app.ThreeDimensionalPlot,[min(F2,[],'all'),max(F2,[],'all')]); %Set  minimum and maximum GSE value for the colorbar
                    %                 a.FontSize = 11;
                    a.Label.String = 'Liquefaction Potential (PL)';
                end
            end

            Xtest = double(datasetGG(:,2)); %Known X coordinate for scatteredInterpolant
            Ytest = double(datasetGG(:,3)); %Known Y coordinate for scatteredInterpolant
            Vtest = double(datasetGG(:,4)); %Known GSE
            VtestGWL = double(datasetGG(:,5)); %Known GWL
            predxcoord= app.xcoordinatePredictionEditField.Value;
            predycoord= app.ycoordinatePredictionEditField.Value;

            F1 = scatteredInterpolant(Xtest,Ytest,Vtest,'linear','none'); %Get interpolated GSE or GWL data using linear interpolation method
            GSE = F1(predxcoord,predycoord);
            F2 = scatteredInterpolant(Xtest,Ytest,VtestGWL,'linear','none'); %Get interpolated GSE or GWL data using linear interpolation method
            GWL = F2(predxcoord,predycoord);

            %%Plot Borehole Location
            if strcmp(app.valuexyz,'Ground Surface Elevation')
                zloc = datasetGG(:,4)+0.2;
                hold(app.ThreeDimensionalPlot,'on')
                plot3(app.ThreeDimensionalPlot,datasetGG(:,2),datasetGG(:,3),datasetGG(:,4),'o','MarkerSize',3,'MarkerFaceColor','black');
                text(app.ThreeDimensionalPlot,datasetGG(:,2),datasetGG(:,3),zloc,app.BHcode);
                plot3(app.ThreeDimensionalPlot,predxcoord(1),predycoord(1),GSE,'Xw','MarkerSize',10,'LineWidth',3)
                hold(app.ThreeDimensionalPlot,'off')
            elseif strcmp(app.valuexyz,'Groundwater Level')
                zloc = datasetGG(:,5)+0.2;
                hold(app.ThreeDimensionalPlot,'on')
                plot3(app.ThreeDimensionalPlot,datasetGG(:,2),datasetGG(:,3),datasetGG(:,5),'o','MarkerSize',3,'MarkerFaceColor','black');
                text(app.ThreeDimensionalPlot,datasetGG(:,2),datasetGG(:,3),zloc,app.BHcode);
                plot3(app.ThreeDimensionalPlot,predxcoord(1),predycoord(1),GSE,'Xw','MarkerSize',10,'LineWidth',3)
                hold(app.ThreeDimensionalPlot,'off')
            elseif strcmp(app.valuexyz,'Liquefaction Potential (PL)')
                zloc = datasetGG(:,4)+100;
                hold(app.ThreeDimensionalPlot,'on')
                plot3(app.ThreeDimensionalPlot,datasetGG(:,2),datasetGG(:,3),zloc,'o','MarkerSize',3,'MarkerFaceColor','black');
                text(app.ThreeDimensionalPlot,datasetGG(:,2),datasetGG(:,3),zloc,app.BHcode);
                plot3(app.ThreeDimensionalPlot,predxcoord(1),predycoord(1),zloc(1),'Xw','MarkerSize',10,'LineWidth',3)
                hold(app.ThreeDimensionalPlot,'off')
            else
                zloc = datasetGG(:,4)+0.2;
                hold(app.ThreeDimensionalPlot,'on')
                plot3(app.ThreeDimensionalPlot,datasetGG(:,2),datasetGG(:,3),datasetGG(:,4),'o','MarkerSize',3,'MarkerFaceColor','black');
                text(app.ThreeDimensionalPlot,datasetGG(:,2),datasetGG(:,3),zloc,app.BHcode);
                plot3(app.ThreeDimensionalPlot,predxcoord(1),predycoord(1),GSE,'Xw','MarkerSize',10,'LineWidth',3)
                hold(app.ThreeDimensionalPlot,'off')
            end

            %%Plot view
            if strcmp(app.valuexyz,'Liquefaction Potential (PL)')
                view(app.ThreeDimensionalPlot,2)
            else
                if app.ThreeDViewButton.Value==1
                    view(app.ThreeDimensionalPlot,3)
                elseif app.TopViewButton.Value==1
                    view(app.ThreeDimensionalPlot,0,90)
                elseif app.XZViewButton.Value==1
                    view(app.ThreeDimensionalPlot,0,0)
                elseif app.YZViewButton.Value==1
                    view(app.ThreeDimensionalPlot,90,0)
                end
            end

            app.ProgressTab5.Text = 'Done!';
        end

        % Button pushed function: PlotToTableButton
        function PlotToTableButtonPushed(app, event)
            app.ProgressTab5.Text = 'Processing...';
            pause(0.00001);

            %% Plot Table
            datasetGG = zeros([height(app.MyDataArr),width(app.MyDataArr{1})]); %datasetGG is the dataset for Ground Surface Elevation and Groundwater Level Interpolation
            for loop1 = 1:height(app.MyDataArr)
                datasetGG(loop1,:) = app.MyDataArr{loop1}(1,:);
            end

            datasettab = cat(1,app.MyData{:});
            dataset = cat(2,cat(1,app.MyDataArr{:}),table2array(datasettab(:,12))); %dataset is the dataset for SPT-N, Soil Type/Class, % Passing #200 Sieve, and D50 Interpolation

            categ = categorical(table2cell(datasettab(:,8)));
            classes = string(num2cell(1:numel(categories(categ))));
            classesstr = categories(categ);
            classlist= double(renamecats(categ,classes));
            dataset(:,8) = classlist;

            %%%%%%%

            app.valuexyz = app.TobePlottedDropDown.Value; %Identify geotechnical properties/liquefaction analysis results to be plotted
            xslice = app.xcoordinateSliceEditField.Value;
            yslice = app.ycoordinateSliceEditField.Value;
            zslice = app.zcoordinateSliceEditField.Value;

            %Study area grid
            realmaxX=ceil(max(dataset(:,2))); %max & min X coordinate
            realminX=floor(min(dataset(:,2)));

            realmaxY=ceil(max(dataset(:,3))); %max & min Y coord
            realminY=floor(min(dataset(:,3)));

            realmaxZ= ceil(max(dataset(:,4))+1); %max & min Z coord
            realminZ=-20;

            rangeX = app.xspacingEditField.Value; %Input X Spacing in meter
            rangeY = app.yspacingEditField.Value; %Input Y Spacing in meter
            rangeZ = app.zspacingEditField.Value; %Input Z Spacing in meter

            xx = (realminX:rangeX:realmaxX); %X range
            yy = (realminY:rangeY:realmaxY); %Y range

            Xtest = double(datasetGG(:,2)); %Known X coordinate for scatteredInterpolant
            Ytest = double(datasetGG(:,3)); %Known Y coordinate for scatteredInterpolant
            Vtest = double(datasetGG(:,4)); %Known GSE
            VtestGWL = double(datasetGG(:,5)); %Known GWL
            predxcoord= app.xcoordinatePredictionEditField.Value;
            predycoord= app.ycoordinatePredictionEditField.Value;

            F1 = scatteredInterpolant(Xtest,Ytest,Vtest,'linear','none'); %Get interpolated GSE or GWL data using linear interpolation method
            GSE = F1(predxcoord,predycoord); %Get Predicted Ground Surface Elevation
            F2 = scatteredInterpolant(Xtest,Ytest,VtestGWL,'linear','none');
            GWL = F2(predxcoord,predycoord); %Get Predicted Groundwater Level
            depthlist = (0:1:20);

            %Prediction at a selected x-y coordinate
            [Xgrid,Ygrid,Zgrid] = meshgrid(xx,yy,(GSE-depthlist)); %Create grid containing the coordinates for interpolation
            Xgrid = double(Xgrid);
            Ygrid = double(Ygrid);
            Zgrid = double(round(Zgrid,2));

            Xtest = double(dataset(:,2)); %Known X coordinate for griddata
            Ytest = double(dataset(:,3)); %Known Z coordinate for griddata
            Ztest = double(round(dataset(:,4)-dataset(:,6),2)); %Known Z coordinate for griddata

            %Get Predicted SPT-N
            Vtest = double(dataset(:,7)); %Known SPT-N
            F1 = griddata(Xtest,Ytest,Ztest,Vtest,Xgrid,Ygrid,Zgrid,'linear'); %First, use linear interpolation just to get the NaN points (locations)
            findisnan = find(isnan(F1));
            predxcoord= app.xcoordinatePredictionEditField.Value;
            predycoord= app.ycoordinatePredictionEditField.Value;
            slicepred = slice(Xgrid,Ygrid,Zgrid,F1,predxcoord,[],[]);
            xs = get(slicepred,'XData');
            ys = get(slicepred,'YData');
            zs = get(slicepred,'ZData');
            cs = get(slicepred,'CData');
            [val,idx]=min(abs(ys(:,1)-predycoord));
            SPTN = cs(idx,:)'; %Predicted SPT-N

            %Get Predicted Soil Type
            Vtest = double(dataset(:,8)); %Known Soil Type
            F1 = griddata(Xtest,Ytest,Ztest,Vtest,Xgrid,Ygrid,Zgrid,'linear'); %First, use linear interpolation just to get the NaN points (locations)
            findisnan = find(isnan(F1));
            predxcoord= app.xcoordinatePredictionEditField.Value;
            predycoord= app.ycoordinatePredictionEditField.Value;
            slicepred = slice(Xgrid,Ygrid,Zgrid,F1,predxcoord,[],[]);
            xs = get(slicepred,'XData');
            ys = get(slicepred,'YData');
            zs = get(slicepred,'ZData');
            cs = get(slicepred,'CData');
            [val,idx]=min(abs(ys(:,1)-predycoord));
            predres = cs(idx,:)'; %Predicted Soil Type

            predres = round(predres);
            predres(predres<1) = 1;
            predres(predres>numel(classesstr)) = numel(classesstr);
            list = (1:numel(categories(categ)));
            SOILTYPE = cellstr(categorical(predres,list,classesstr));

            %Get Predicted Unit Weight
            SoilClassData = table2cell(datasettab(:,8));
            [SoilClassList,rowsloc,id] = unique(SoilClassData);
            UnitWeightList = table2cell(datasettab(rowsloc,9));
            valueset = string(SoilClassList);
            catnames = string(UnitWeightList);
            UNITWEIGHT = cellstr(categorical(SOILTYPE,valueset,catnames)); %Predicted Unit Weight

            %Get Predicted % Passing #200 Sieve
            Vtest = double(dataset(:,10)); %Known Soil Type
            F1 = griddata(Xtest,Ytest,Ztest,Vtest,Xgrid,Ygrid,Zgrid,'linear'); %First, use linear interpolation just to get the NaN points (locations)
            findisnan = find(isnan(F1));
            predxcoord= app.xcoordinatePredictionEditField.Value;
            predycoord= app.ycoordinatePredictionEditField.Value;
            slicepred = slice(Xgrid,Ygrid,Zgrid,F1,predxcoord,[],[]);
            xs = get(slicepred,'XData');
            ys = get(slicepred,'YData');
            zs = get(slicepred,'ZData');
            cs = get(slicepred,'CData');
            [val,idx]=min(abs(ys(:,1)-predycoord));
            NO200 = cs(idx,:)'; %Predicted % Passing #200 Sieve

            %Get Predicted D50
            Vtest = double(dataset(:,11)); %Known Soil Type
            F1 = griddata(Xtest,Ytest,Ztest,Vtest,Xgrid,Ygrid,Zgrid,'linear'); %First, use linear interpolation just to get the NaN points (locations)
            findisnan = find(isnan(F1));
            predxcoord= app.xcoordinatePredictionEditField.Value;
            predycoord= app.ycoordinatePredictionEditField.Value;
            slicepred = slice(Xgrid,Ygrid,Zgrid,F1,predxcoord,[],[]);
            xs = get(slicepred,'XData');
            ys = get(slicepred,'YData');
            zs = get(slicepred,'ZData');
            cs = get(slicepred,'CData');
            [val,idx]=min(abs(ys(:,1)-predycoord));
            D50 = cs(idx,:)'; %Predicted D50

            predxcoord = repmat(predxcoord,length(SPTN),1);
            predycoord = repmat(predycoord,length(SPTN),1);
            GSE = round(GSE,2);
            GWL = round(GWL,2);
            GSE2 = repmat(GSE,length(SPTN),1);
            GWL2 = repmat(GWL,length(SPTN),1);
            SPTN = round(SPTN);
            UNITWEIGHTnum = str2double(UNITWEIGHT);

            %%%%%
            participateinliq = ones(length(GSE2),1);
            combineddata = cat(2,predxcoord,predycoord,GSE2,GWL2,depthlist',SPTN,UNITWEIGHTnum,NO200,D50,participateinliq); 

            app.BA = cat(2,zeros([21,1]),combineddata(:,1:6),zeros([21,1]),combineddata(:,7:end));

            app.method = app.CRR75EquationDropDown.Value;

            if strcmp(app.method,'Japan Design Specification of Highway Bridge')
                %% Liquefaction Potential Calculation
                %Set Coefficient
                cZ = 0.85;
                cG = 1.2;
                cI = 1.1;
                kSO = 0.15;
                kS = cZ*cG*cI*kSO;

                %Magnitude
                app.Mw = app.MomentMagnitudeEditField.Value;

                %Create Table
                X = (0:20);
                liq_table = zeros([length(X),22]);

                liq_table(:,1) = app.BA(:,12); %Participates in Liquefaction?
                liq_table(:,2) = app.BA(:,6);%Depth
                liq_table(:,3) = app.BA(:,4)-app.BA(:,5);%WT Depth
                liq_table(:,4) = liq_table(:,2)-liq_table(:,3);%Depth from WT
                liq_table(:,5) = app.BA(:,7);%SPT-N
                liq_table(:,21:22) = app.BA(:,2:3); % Coordinate X Y
                liq_table(:,12) = app.BA(:,9);

                helpcol = liq_table(:,2);
                helpcol(helpcol<0) = NaN;
                liq_table(:,2) = helpcol;

                %Sigmav0(Total overburden pressure)
                liq_table(:,6) = liq_table(:,12).*liq_table(:,2);

                %Sigmav0(in kN/cm2)
                liq_table(:,7) = liq_table(:,6)./100;

                %Sigma'v0(Effective Vertical Stress)
                helpcol = zeros([length(X),1]);

                for loop1 = 1:length(X)
                    if liq_table(loop1,2) < liq_table(loop1,3)
                        helpcol(loop1) = liq_table(loop1,2).*liq_table(loop1,12);
                    else
                        helpcol(loop1) = (liq_table(loop1,2)-liq_table(loop1,3)).*(liq_table(loop1,12)-9.81)+(liq_table(loop1,3).*liq_table(loop1,12));
                    end
                end

                liq_table(:,8) = helpcol;

                %Sigma'v0(in kN/cm2)
                liq_table(:,9) = liq_table(:,8)./100;

                %D50
                liq_table(:,10) = app.BA(:,11);

                %FC
                liq_table(:,11) = app.BA(:,10);

                %R1
                liq_table(:,13) = 0.0882*sqrt(liq_table(:,5)./(liq_table(:,8)+0.7));
                %R2
                helpcol = zeros([length(X),1]);


                for loop1 = 1:length(X)
                    if liq_table(loop1,10) >= 0.02 && liq_table(loop1,10) <=0.05
                        helpcol(loop1) = 0.19;
                    elseif liq_table(loop1,10) > 0.05 && liq_table(loop1,10) <= 0.6
                        helpcol(loop1) = 0.225*log10(0.35/liq_table(loop1,10));
                    elseif liq_table(loop1,10) > 0.6 && liq_table(loop1,10) <= 2
                        helpcol(loop1) = -0.05;
                    end
                end

                liq_table(:,14) = helpcol;

                % R3
                helpcol = zeros([length(X),1]);

                for loop1 = 1:length(X)
                    if liq_table(loop1,11) >= 0 && liq_table(loop1,11) <= 40
                        helpcol(loop1) = 0;
                    elseif liq_table(loop1,11) > 40 && liq_table(loop1,11) <= 100
                        helpcol(loop1) = 0.004*liq_table(loop1,11)-0.16;
                    end
                end

                liq_table(:,15) = helpcol;

                %R
                liq_table(:,16) = liq_table(:,13) + liq_table(:,14) + liq_table(:,15);

                %γd (rd)
                liq_table(:,17) = 1-0.015.*(liq_table(:,2));

                %L
                liq_table(:,18) = liq_table(:,17).*kS.*(liq_table(:,7)./liq_table(:,9));

                %FL
                helpcol = zeros([length(X),1]);
                helpcol1_2 = liq_table(:,2);
                helpcol1_3 = liq_table(:,3);

                for loop1 = 1:length(X)
                    if liq_table(loop1,1) == 0 || helpcol1_2(loop1) < helpcol1_3(loop1)
                        helpcol(loop1) = 1;
                    else
                        helpcol(loop1) = liq_table(loop1,16)/liq_table(loop1,18);
                    end
                end

                liq_table(:,19) = helpcol;

                %Risk
                helpcol = zeros([length(X),1]);

                for loop1 = 1:length(X)
                    if liq_table(loop1,19) < 1
                        helpcol(loop1) = 1;
                    elseif liq_table(loop1,19) >= 1
                        helpcol(loop1) = 2;
                    end
                end

                liq_table(:,20) = helpcol;

                %% PL-Value
                % Create PL-Value Calculation Table
                PL_table = zeros([length(X),11]);

                % Coordinate
                PL_table(:,1:2) = liq_table(:,21:22);

                % Depth
                PL_table(:,3) = liq_table(:,2);

                %FL
                Fs1 = liq_table(:,19);
                Fs1(Fs1<0) = 0;
                Fs = liq_table(:,19);
                Fs(Fs>1) = 1;
                Fs(Fs<0) = 0;
                PL_table(:,4) = Fs;
                %     PL_table(:,4) = liq_table(:,25);

                %Liquefaction Risk
                PL_table(:,5) = liq_table(:,20);

                %w(z)
                PL_table(:,6) = 10-(0.5.*PL_table(:,3));

                %F
                helpcol = zeros([length(X),1]);

                for loop1 = 1:length(X)
                    if isnan(PL_table(loop1,3))
                        helpcol(loop1) = NaN;
                    elseif PL_table(loop1,5) == 1 ||PL_table(loop1,5) == 2
                        helpcol(loop1) = 1-PL_table(loop1,4);
                    else
                        helpcol(loop1) = 0;
                    end
                end

                PL_table(:,7) = helpcol;

                %int(w)
                helpcol = zeros([length(X),1]);

                for loop1 = 1:length(X)
                    if isnan(PL_table(loop1,3))
                        helpcol(loop1) = NaN;
                    elseif PL_table(loop1,3) == 0 || PL_table(loop1,3) < 1
                        helpcol(loop1) = 0;
                    else
                        helpcol(loop1) = (PL_table(loop1,6) + PL_table(loop1-1,6))/2.*(PL_table(loop1,3)-PL_table(loop1-1,3));
                    end
                end


                PL_table(:,8) = helpcol;

                %F.int(w)
                PL_table(:,9) = PL_table(:,7).*PL_table(:,8);

                %Cumulative
                helpcol = zeros([length(X),1]);

                for loop1 = 1:length(X)
                    if isnan(PL_table(loop1,3))
                        helpcol(loop1) = NaN;
                    elseif PL_table(loop1,3) == 0 || PL_table(loop1,3) < 1
                        helpcol(loop1) = PL_table(loop1,9);
                    else
                        helpcol(loop1) = helpcol(loop1-1) + PL_table(loop1,9);
                    end
                end

                PL_table(:,10) = helpcol;

                %%
                %PL
                helpcol = zeros([length(X),1]);

                for loop1 = 1:length(X)
                    if loop1 == length(X)
                        helpcol(loop1) = PL_table(loop1,10);
                    elseif PL_table(loop1+1,3) == 0
                        helpcol(loop1) = PL_table(loop1,10);
                    else
                        helpcol(loop1) = NaN;
                    end
                end

                PL_table(:,11) = helpcol;

            else

                %% Input Data
                %CE
                value = app.EnergyRatioCETab2.Value;
                app.CE = value;

                %CB
                value = app.BoreholeDiameterCBTab2.Value;
                if strcmp(value,'65-115 mm')
                    app.CB = 1;
                elseif strcmp(value,'150 mm')
                    app.CB = 1.05;
                else
                    app.CB = 1.15;
                end

                %CS
                value = app.SamplingMethodCSTab2.Value;
                if strcmp(value,'Standard Sampler')
                    app.CS = 1;
                else
                    app.CS = 1.1;
                end

                %AtmP
                value = app.AtmosphericPressureEditField.Value;
                app.AtmP = value;

                value = app.CRR75EquationDropDown.Value;
                if strcmp(value,'Korean Liquefaction Assessment Method')
                    app.AtmP = 96; % kPa
                end

                %Peak Horizontal Acceleration
                value = app.PeakHorizontalAccelerationEditField.Value;
                app.amax = value;

                %Moment Magnitude
                value = app.CRR75EquationDropDown.Value;
                if strcmp(value,'Korean Liquefaction Assessment Method')
                    app.Mw = 6.5;
                else
                    app.Mw = app.MomentMagnitudeEditField.Value;
                end

                %Create Table
                X = (0:20);
                liq_table = zeros([length(X),26]);

                liq_table(:,1) = app.BA(:,12); %Participate in Liquefaction?
                liq_table(:,2) = app.BA(:,10);%Finer than 0.075 mm Sieve (%FC)
                liq_table(:,3) = app.BA(:,6);%Depth from Ground Surface
                liq_table(:,4) = app.BA(:,4)-app.BA(:,5);%Depth to the water table

                %Depth from WT
                liq_table(:,5) = liq_table(:,3)-liq_table(:,4);

                %Rod Length
                liq_table(:,6) = liq_table(:,3); %1.5 from Estimation

                %Cr (Rod Length Coefficient)
                helpcol1 = liq_table(:,6);
                helpcol2 = zeros([length(X),1]);

                for loop1 = 1:length(X)
                    if helpcol1(loop1) == 0
                        helpcol2(loop1) = 0;
                    elseif helpcol1(loop1)<3
                        helpcol2(loop1) = 0.75;
                    elseif helpcol1(loop1) >=3 && helpcol1(loop1)<4
                        helpcol2(loop1) = 0.8;
                    elseif helpcol1(loop1)>=4 && helpcol1(loop1)<6
                        helpcol2(loop1) = 0.85;
                    elseif helpcol1(loop1)>=6 && helpcol1(loop1)<10
                        helpcol2(loop1) = 0.95;
                    else
                        helpcol2(loop1) = 1;
                    end
                end

                liq_table(:,7) = helpcol2;

                %N-SPT
                liq_table(:,8) = app.BA(:,7);

                %N60
                liq_table(:,9) = round(app.BA(:,7)*(app.CB)*(app.CS)*(app.CE).*liq_table(:,7));

                %Unit Weight(Gamma)
                liq_table(:,10) = app.BA(:,9);

                %Gamma'
                helpcol1 = liq_table(:,3);
                helpcol1_1 = liq_table(:,4);
                helpcol1_2 = liq_table(:,10);
                helpcol2 = zeros([length(X),1]);

                for loop1 = 1:length(X)
                    if helpcol1(loop1) >= helpcol1_1(loop1)
                        helpcol2(loop1) = helpcol1_2(loop1);
                    else
                        helpcol2(loop1) = helpcol1_2(loop1)-9.81;
                    end
                end

                liq_table(:,11) = helpcol2;

                %Sigma'v0(Effective Vertical Stress)
                helpcol1 = liq_table(:,3);
                helpcol1_1 = liq_table(:,4);
                helpcol1_2 = liq_table(:,10);
                helpcol2 = zeros([length(X),1]);

                for loop1 = 1:length(X)
                    if helpcol1(loop1) < helpcol1_1(loop1)
                        helpcol2(loop1) = helpcol1(loop1).*helpcol1_2(loop1);
                    else
                        helpcol2(loop1) = (helpcol1(loop1)-helpcol1_1(loop1)).*(helpcol1_2(loop1)-9.81)+(helpcol1_1(loop1).*helpcol1_2(loop1));
                    end
                end

                liq_table(:,12) = helpcol2;

                %Cn(Overburden Coefficient)
                helpcol1 = liq_table(:,12);
                helpcol2 = zeros([length(X),1]);

                value = app.CRR75EquationDropDown.Value;
                value2 = app.AtmP;
                if strcmp(value,"Youd et al")
                    for loop1 = 1:length(X)
                        if  (value2/helpcol1(loop1))^0.5 > 1.7
                            helpcol2(loop1) = 1.7;
                        else
                            helpcol2(loop1) = (value2/helpcol1(loop1))^0.5;
                        end
                    end
                else
                    for loop1 = 1:length(X)
                        if 2.2/(1.2+(helpcol1(loop1)/value2)) > 1.7
                            helpcol2(loop1) = 1.7;
                        else
                            helpcol2(loop1) = 2.2/(1.2+(helpcol1(loop1)/value2));
                        end
                    end
                end

                liq_table(:,13) = helpcol2;

                %(N1)60
                liq_table(:,14) = round(liq_table(:,9).*liq_table(:,13));

                %Alpha (Fines Content Correction)
                helpcol1 = liq_table(:,2);
                helpcol2 = zeros([length(X),1]);

                for loop1 = 1:length(X)
                    if helpcol1(loop1) <= 5
                        helpcol2(loop1) = 0;
                    elseif helpcol1(loop1) > 5 && helpcol1(loop1) < 35
                        helpcol2(loop1) = exp(1.76-(190/helpcol1(loop1)^2));
                    else
                        helpcol2(loop1) = 5;
                    end
                end

                liq_table(:,15) = helpcol2;

                %Beta (Fines Content Correction)
                helpcol1 = liq_table(:,2);
                helpcol2 = zeros([length(X),1]);

                for loop1 = 1:length(X)
                    if helpcol1(loop1) <= 5
                        helpcol2(loop1) = 1;
                    elseif helpcol1(loop1) > 5 && helpcol1(loop1) < 35
                        helpcol2(loop1) = 0.99+helpcol1(loop1)^1.5/1000;
                    else
                        helpcol2(loop1) = 1.2;
                    end
                end

                liq_table(:,16) = helpcol2;

                %(N1)60cs (Corrected(N1)60)
                liq_table(:,17) = round(liq_table(:,15)+liq_table(:,16).*liq_table(:,14));

                %Mw (Magnitude)
                value = app.CRR75EquationDropDown.Value;
                if strcmp(value,'Korean Liquefaction Assessment Method')
                    liq_table(:,18) = 6.5;
                else
                    liq_table(:,18) = app.Mw;
                end

                %MSF (Revised Idriss Scaling Factor) ***Check This
                value = app.CRR75EquationDropDown.Value;

                if strcmp(value,'Seed and Idriss')
                    liq_table(:,19) = app.ManualMSFInputEditField.Value;
                elseif strcmp(value,'Korean Liquefaction Assessment Method')
                    liq_table(:,19) = (app.Mw/7.5).^1.19;
                else
                    value2 = app.MagnitudeScalingFactorMSFDropDown.Value;
                    if strcmp(value2,'Input MSF Value')
                        liq_table(:,19) = app.ManualMSFInputEditField.Value;
                    else
                        liq_table(:,19) = 10^2.24./(liq_table(:,18).^2.56);
                    end
                end

                %CRR
                if strcmp(value,'Youd et al')
                    liq_table(:,20) = 1./(34-liq_table(:,17))+(liq_table(:,17)/135)+(50/(10*liq_table(:,17)+45).^2)'-(1/200);
                else
                    liq_table(:,20) = 1./(34-liq_table(:,14))+(liq_table(:,14)/135)+(50/(10*liq_table(:,14)+45).^2)'-(1/200);
                end

                %amax (g)
                liq_table(:,21) = app.amax;

                %Sigmav0(Total overburden pressure)
                liq_table(:,22) = liq_table(:,3).*liq_table(:,10);

                %rd (stress reduction coefficient)
                value = app.CRR75EquationDropDown.Value;

                if strcmp(value,'Seed and Idriss')
                    for loop1 = 1:length(X)
                        if liq_table(loop1,3) <=9.15
                            liq_table(loop1,23) = 1-0.00765*liq_table(loop1,3);
                        else
                            liq_table(loop1,23) = 1.174-0.0267*liq_table(loop1,3);
                        end
                    end
                elseif strcmp(value,'Korean Liquefaction Assessment Method')
                    liq_table(:,23) = 1;
                elseif strcmp(value,'Youd et al')
                    liq_table(:,23) = (1-(0.4113.*liq_table(:,3).^0.5)+0.04052.*liq_table(:,3)+(0.001753.*liq_table(:,3).^1.5))./(1-(0.4177.*liq_table(:,3).^0.5)+0.05729.*liq_table(:,3)-(0.006205.*liq_table(:,3).^1.5)+(0.00121.*liq_table(:,3).^2));
                end

                %CSR
                liq_table(:,24) = 0.65.*liq_table(:,21).*liq_table(:,22)./liq_table(:,12).*liq_table(:,23);

                %FS
                helpcol1 = liq_table(:,1);
                helpcol1_1 = liq_table(:,20);
                helpcol1_2 = liq_table(:,24);
                helpcol1_3 = liq_table(:,19);
                helpcol1_4 = liq_table(:,3);
                helpcol1_5 = liq_table(:,4);
                helpcol2 = zeros([length(X),1]);

                for loop1 = 1:length(X)
                    if helpcol1(loop1) == 0 || helpcol1_4(loop1) < helpcol1_5(loop1)
                        helpcol2(loop1) = 1;
                    elseif isnan(helpcol1_2(loop1))
                        helpcol2(loop1) = 0;
                    else
                        helpcol2(loop1) = helpcol1_1(loop1)./helpcol1_2(loop1).*helpcol1_3(loop1);
                    end
                end

                liq_table(:,25) = helpcol2;

                %Risk
                helpcol1_1 = liq_table(:,1);

                helpcol1_3 = liq_table(:,25);
                helpcol1_4 = liq_table(:,3);
                helpcol2 = zeros([length(X),1]);

                for loop1 = 1:length(X)
                    if helpcol1_1(loop1) == 0 || helpcol1_4(loop1) == 0
                        helpcol2(loop1) = 3;
                    elseif helpcol1_3(loop1) <= 1
                        helpcol2(loop1) = 1;
                    elseif helpcol1_3(loop1) > 1
                        helpcol2(loop1) = 2;
                    end
                end

                liq_table(:,26) = helpcol2;

                liq_table = cat(2,app.BA(:,2:3),liq_table);


                %% PL-Value
                % Create PL-Value Calculation Table
                PL_table = zeros([length(X),11]);

                % Coordinate
                PL_table(:,1:2) = liq_table(:,1:2);

                % Depth
                PL_table(:,3) = liq_table(:,5);

                %Fs
                Fs1 = liq_table(:,27);
                Fs1(Fs1<0) = 0;
                Fs = liq_table(:,27);
                Fs(Fs>1) = 1;
                Fs(Fs<0) = 0;
                PL_table(:,4) = Fs;

                %Liquefaction Risk
                PL_table(:,5) = liq_table(:,28);

                %w(z)
                PL_table(:,6) = 10-(0.5.*PL_table(:,3));

                %F
                helpcol1 = PL_table(:,5);
                helpcol1_1 = PL_table(:,4);
                helpcol2 = zeros([length(X),1]);

                for loop1 = 1:length(X)
                    if helpcol1(loop1) == 1 || helpcol1(loop1) == 2
                        helpcol2(loop1) = 1-helpcol1_1(loop1);
                    else
                        helpcol2(loop1) = 0;
                    end
                end

                PL_table(:,7) = helpcol2;

                %int(w)
                helpcol1 = PL_table(:,3);
                helpcol1_1 = PL_table(:,6);
                helpcol2 = zeros([length(X),1]);

                for loop1 = 1:length(X)
                    if helpcol1(loop1) == 0
                        helpcol2(loop1) = 0;
                    else
                        helpcol2(loop1) = (helpcol1_1(loop1) + helpcol1_1(loop1-1))/2.*(helpcol1(loop1)-helpcol1(loop1-1));
                    end
                end

                PL_table(:,8) = helpcol2;

                %F.int(w)
                PL_table(:,9) = PL_table(:,7).*PL_table(:,8);

                %Cumulative
                helpcol1 = PL_table(:,3);
                helpcol1_1 = PL_table(:,9);
                helpcol2 = zeros([length(X),1]);


                for loop1 = 1:length(X)
                    if helpcol1(loop1) == 0
                        helpcol2(loop1) = helpcol1_1(loop1);
                    else
                        %Check This
                        helpcol2(loop1) = helpcol2(loop1-1) + helpcol1_1(loop1);
                    end
                end

                PL_table(:,10) = helpcol2;


                %%
                %PL
                helpcol1 = PL_table(:,3);
                helpcol1_1 = PL_table(:,10);
                helpcol2 = zeros([length(X),1]);

                for loop1 = 1:length(X)
                    if loop1 == length(X)
                        helpcol2(loop1) = helpcol1_1(loop1);
                    elseif helpcol1(loop1+1) == 0
                        helpcol2(loop1) = helpcol1_1(loop1);
                    else
                        helpcol2(loop1) = NaN;
                    end
                end

                PL_table(:,11) = helpcol2;
            end

            if strcmp(app.method,'Japan Design Specification of Highway Bridge')
                %% Depth, FS, LPI, (N1)60, CRR
                plot_table = zeros(length(X),9);
                plot_table(:,1) = liq_table(:,2); %Depth
                plot_table(:,2) = liq_table(:,8); %Effective Stress
                plot_table(:,3) = liq_table(:,6); % Total Stress
                plot_table(:,4) = liq_table(:,16); %R
                plot_table(:,5) = Fs1; %FS
                plot_table(:,6) = PL_table(:,9); %F.w(z)
                plot_table(:,7) = liq_table(:,18); %L
                plot_table(:,8) = liq_table(:,3); %WT depth
                plot_table(:,9) = PL_table(:,11); %PL

                %% Plot results to the table
                InputData = num2cell(app.BA);
                plot_table_cell = num2cell(plot_table);

                newDisplayData = cell(length(X),17);

                %% Plot Table
                newDisplayData(:,1) = InputData(:,2); %x-coordinate
                newDisplayData(:,2) = InputData(:,3); %y-coordinate
                newDisplayData(:,3) = InputData(:,4); %Ground Surface Elevation
                newDisplayData(:,4) = plot_table_cell(:,8); %Depth to the water table
                newDisplayData(:,5) = InputData(:,6); %Depth
                newDisplayData(:,6) = SOILTYPE; %Soil Type/Class
                newDisplayData(:,7) = num2cell(UNITWEIGHTnum); %Unit Weight
                newDisplayData(:,8) = InputData(:,10); %Fines Content
                newDisplayData(:,9) = InputData(:,11); %D50
                newDisplayData(:,10) = plot_table_cell(:,2); %Eff. Overburden Stress
                newDisplayData(:,11) = plot_table_cell(:,3); %Total Overburden Stress
                newDisplayData(:,12) = InputData(:,7); %N
                newDisplayData(:,13) = plot_table_cell(:,7); %L
                newDisplayData(:,14) = plot_table_cell(:,4); %R
                newDisplayData(:,15) = plot_table_cell(:,5); %Safety Factor
                newDisplayData(:,16) = plot_table_cell(:,6); %F.w(z)
                newDisplayData(:,17) = plot_table_cell(:,9); %PL

                t = cell2mat(newDisplayData(:,13));
                t(isnan(t)) = 0;
                newDisplayData(:,13) = num2cell(t);

                app.PredictionResultsTable.Data = newDisplayData;
                app.PredictionResultsTable.ColumnName = {'x-coordinate','y-coordinate','Ground Surface Elevation (m)',...
                    'Depth to The Water Table (m)','Depth (m)','Soil Type/Classification','Unit Weight (kN/m3)',...
                    'Fines Content (%)','D50 (mm)','Effective Vertical Stress (kN/m3)',...
                    'Total Vertical Stress (kN/m3)','N','CSR',...
                    'CRR','Factor of Safety (FS)','F.w(z)','Liquefaction Potential Index (PL)'};

                %%Plot Graphs
                PlotDataZeroCol = num2cell(zeros(height(newDisplayData),1));
                PlotData = cell2mat(cat(2,newDisplayData(:,1:5),PlotDataZeroCol,newDisplayData(:,7:17)));
                plot(app.SPTNPredictedPlot,PlotData(:,13),PlotData(:,5)); %Plot SPT-N
                legend(app.SPTNPlotTab3,'N','Location','northeast');
                plot(app.FCPredictedPlot,PlotData(:,8),PlotData(:,5)) %Passing #200 Sieve
                plot(app.D50PredictedPlot,PlotData(:,9),PlotData(:,5)) %D50
                plot(app.FSPredictedPlot,PlotData(:,15),PlotData(:,5)); %Plot FS vs Depth
                plot(app.LPIPredictedPlot,PlotData(:,16),PlotData(:,5)); %Plot F.w(z) vs Depth
                plot(app.CRRPredictedPlot,PlotData(:,14),PlotData(:,5)); %Plot CRR vs Depth
                plot(app.VerticalStressPredictedPlot,PlotData(:,11),PlotData(:,5),'Color','red') %Plot Total Stress
                hold(app.VerticalStressPredictedPlot,'on')
                plot(app.VerticalStressPredictedPlot,PlotData(:,10),PlotData(:,5),'Color','blue') %Plot Eff. Stress
                legend(app.VerticalStressPredictedPlot,'Total Stress','Effective Stress','Location','northeast')
                hold(app.VerticalStressPredictedPlot,'off')

            else
                %% Depth, FS, LPI, (N1)60, CRR
                plot_table = zeros(length(X),13);
                plot_table(:,1) = liq_table(:,5); %Depth
                plot_table(:,2) = liq_table(:,14); %Effective Stress
                plot_table(:,3) = liq_table(:,24); % Total Stress
                plot_table(:,4) = liq_table(:,22); %CRR
                plot_table(:,5) = Fs1; %FS
                plot_table(:,6) = PL_table(:,9); %F.w(z)
                plot_table(:,7) = liq_table(:,11); %N60
                plot_table(:,8) = liq_table(:,16); %(N1)60
                plot_table(:,9) = liq_table(:,26); %CSR
                plot_table(:,10) = liq_table(:,25); %rd
                plot_table(:,11) = liq_table(:,21); %MSF
                plot_table(:,12) = liq_table(:,6); %Depth to The Water Table
                plot_table(:,13) = PL_table(:,11); %PL

                %% Plot results to the table
                InputData = num2cell(app.BA);
                plot_table_cell = num2cell(plot_table);

                newDisplayData = cell(length(X),21);
                % Plot Table
                newDisplayData(:,1) = InputData(:,2); %x-coordinate
                newDisplayData(:,2) = InputData(:,3); %y-coordinate
                newDisplayData(:,3) = InputData(:,4); %Ground Surface Elevation
                newDisplayData(:,4) = plot_table_cell(:,12); %Depth to The Water Table
                newDisplayData(:,5) = InputData(:,6); %Depth
                newDisplayData(:,6) = SOILTYPE; %Soil Type/Class
                newDisplayData(:,7) = num2cell(UNITWEIGHTnum); %Unit Weight
                newDisplayData(:,8) = InputData(:,10); %Fines Content
                newDisplayData(:,9) = InputData(:,11); %D50
                newDisplayData(:,10) = plot_table_cell(:,10); %rd
                newDisplayData(:,11) = plot_table_cell(:,2); %Eff. Overburden Stress
                newDisplayData(:,12) = plot_table_cell(:,3); %Total Overburden Stress
                newDisplayData(:,13) = InputData(:,7); %N
                newDisplayData(:,14) = plot_table_cell(:,7); %N60
                newDisplayData(:,15) = plot_table_cell(:,8); %(N1)60
                newDisplayData(:,16) = plot_table_cell(:,9); %CSR
                newDisplayData(:,17) = plot_table_cell(:,4); %CRR
                newDisplayData(:,18) = plot_table_cell(:,11); %MSF
                newDisplayData(:,19) = plot_table_cell(:,5); %Safety Factor
                newDisplayData(:,20) = plot_table_cell(:,6); %F.w(z)
                newDisplayData(:,21) = plot_table_cell(:,13); %PL

                t = cell2mat(newDisplayData(:,16));
                t(isnan(t)) = 0;
                newDisplayData(:,17) = num2cell(t);

                app.PredictionResultsTable.Data = newDisplayData;
                app.PredictionResultsTable.ColumnName = {'x-coordinate','y-coordinate','Ground Surface Elevation (m)',...
                    'Depth to The Water Table (m)','Depth (m)','Soil Type/Classification','Unit Weight (kN/m3)',...
                    'Fines Content (%)','D50 (mm)','Stress Reduction Coefficient (rd)','Effective Vertical Stress (kN/m3)',...
                    'Total Vertical Stress (kN/m3)','N','N60','(N1)60','CSR',...
                    'CRR','MSF','Factor of Safety (FS)','F.w(z)','Liquefaction Potential Index (PL)'};

                %%Plot Graphs
                PlotDataZeroCol = num2cell(zeros(height(newDisplayData),1));
                PlotData = cell2mat(cat(2,newDisplayData(:,1:5),PlotDataZeroCol,newDisplayData(:,7:21)));
                plot(app.CRRPredictedPlot,PlotData(:,17),PlotData(:,5)); %Plot CRR vs Depth
                plot(app.FSPredictedPlot,PlotData(:,19),PlotData(:,5)); %Plot FS vs Depth
                plot(app.LPIPredictedPlot,PlotData(:,20),PlotData(:,5)); %Plot F.w(z) vs Depth
                plot(app.SPTNPredictedPlot,PlotData(:,14),PlotData(:,5),'Color','blue'); %Plot N60
                hold(app.SPTNPredictedPlot,'on');
                plot(app.SPTNPredictedPlot,PlotData(:,15),PlotData(:,5),'Color','red'); %(N1)60
                legend(app.SPTNPredictedPlot,'N60','(N1)60','Location','northeast');
                hold(app.SPTNPredictedPlot,'off');
                plot(app.FCPredictedPlot,PlotData(:,8),PlotData(:,5)); %Passing #200 Sieve
                plot(app.D50PredictedPlot,PlotData(:,9),PlotData(:,5)); %D50
                plot(app.VerticalStressPredictedPlot,PlotData(:,12),PlotData(:,5),'Color','red'); %Plot Total Stress
                hold(app.VerticalStressPredictedPlot,'on');
                plot(app.VerticalStressPredictedPlot,PlotData(:,11),PlotData(:,5),'Color','blue'); %Plot Eff. Stress
                legend(app.VerticalStressPredictedPlot,'Total Stress','Effective Stress','Location','northeast');
                hold(app.VerticalStressPredictedPlot,'off');
            end

            close all;

            %%Plot selected point location
            if strcmp(app.valuexyz,'Ground Surface Elevation')
                hold(app.ThreeDimensionalPlot,'on')
                plot3(app.ThreeDimensionalPlot,predxcoord(1),predycoord(1),GSE,'Xw','MarkerSize',10,'LineWidth',3)
                hold(app.ThreeDimensionalPlot,'off')
            elseif strcmp(app.valuexyz,'Groundwater Level')
                hold(app.ThreeDimensionalPlot,'on')
                plot3(app.ThreeDimensionalPlot,predxcoord(1),predycoord(1),GWL,'Xw','MarkerSize',10,'LineWidth',3)
                hold(app.ThreeDimensionalPlot,'off')
            elseif strcmp(app.valuexyz,'Liquefaction Potential (PL)')
                zloc = datasetGG(:,4)+100;
                hold(app.ThreeDimensionalPlot,'on')
                plot3(app.ThreeDimensionalPlot,predxcoord(1),predycoord(1),zloc(1),'Xw','MarkerSize',10,'LineWidth',3)
                hold(app.ThreeDimensionalPlot,'off')
            else
                hold(app.ThreeDimensionalPlot,'on')
                plot3(app.ThreeDimensionalPlot,predxcoord(1),predycoord(1),GSE2(1),'Xw','MarkerSize',10,'LineWidth',3)
                hold(app.ThreeDimensionalPlot,'off')
            end

            %Method used in the exported data
            app.MethodStatus = strcat(app.CRR75EquationDropDown.Value,'_');

            %predicted x and y coordinate
            app.predx = string(app.xcoordinatePredictionEditField.Value);
            app.predy = string(app.ycoordinatePredictionEditField.Value);

            app.ProgressTab5.Text = 'Done!';

        end

        % Button pushed function: ExportResultsButtonTab5
        function ExportPredictionResultsButtonPushed(app, event)
            app.ProgressTab5.Text = 'Processing...';
            pause(0.00001);

            cd(app.foldLoc);

            ExpFold = '3D Prediction Map and Data';%%Create Export Folder
            if exist(ExpFold) == 7
                rmdir(ExpFold,'s')
                mkdir(ExpFold);     %%Create Export Folder
            else
                mkdir(ExpFold);
            end
            ExpFoldLoc = strcat(app.foldLoc,'\',ExpFold,'\');

            exportname = strcat(ExpFoldLoc,app.MethodStatus,'Predicted Properties at_',app.predx,',',app.predy);
            exportdata = app.PredictionResultsTable.Data;
            exportdatacol = app.PredictionResultsTable.ColumnName;
            xlswrite(exportname,[exportdatacol.';exportdata]);

            exportfigname = strcat(ExpFoldLoc,'Predicted_',app.valuexyz,'.jpg');
            exportgraphics(app.ThreeDimensionalPlot,exportfigname)

            exportfigname1 = strcat(ExpFoldLoc,'N_N60_(N1)60_',app.predx,',',app.predy,'.jpg');
            exportgraphics(app.SPTNPredictedPlot,exportfigname1);
            exportfigname2 = strcat(ExpFoldLoc,'FC_',app.predx,',',app.predy,'.jpg');
            exportgraphics(app.FCPredictedPlot,exportfigname2)
            exportfigname3 = strcat(ExpFoldLoc,'D50_',app.predx,',',app.predy,'.jpg');
            exportgraphics(app.D50PredictedPlot,exportfigname3);

            exportfigname4 = strcat(ExpFoldLoc,'Vertical Stress Profile_',app.predx,',',app.predy,'.jpg');
            exportgraphics(app.VerticalStressPredictedPlot,exportfigname4)
            exportfigname5 = strcat(ExpFoldLoc,'CRR_',app.predx,',',app.predy,'.jpg');
            exportgraphics(app.CRRPredictedPlot,exportfigname5)
            exportfigname6 = strcat(ExpFoldLoc,'FS_',app.predx,',',app.predy,'.jpg');
            exportgraphics(app.FSPredictedPlot,exportfigname6)
            exportfigname7 = strcat(ExpFoldLoc,'F.w(z)_',app.predx,',',app.predy,'.jpg');
            exportgraphics(app.LPIPredictedPlot,exportfigname7)

            app.ProgressTab5.Text = 'Done!';
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create SPTLiqv10UIFigure and hide until all components are created
            app.SPTLiqv10UIFigure = uifigure('Visible', 'off');
            app.SPTLiqv10UIFigure.Position = [100 100 911 606];
            app.SPTLiqv10UIFigure.Name = 'SPT-Liq v1.0';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.SPTLiqv10UIFigure);
            app.TabGroup.Position = [2 1 910 606];

            % Create SoilInvestigationDataTab
            app.SoilInvestigationDataTab = uitab(app.TabGroup);
            app.SoilInvestigationDataTab.Title = 'Soil Investigation Data';

            % Create SPTNPlotTab1
            app.SPTNPlotTab1 = uiaxes(app.SoilInvestigationDataTab);
            title(app.SPTNPlotTab1, 'SPT-N')
            xlabel(app.SPTNPlotTab1, 'SPT-N')
            ylabel(app.SPTNPlotTab1, 'Depth (m)')
            zlabel(app.SPTNPlotTab1, 'Z')
            app.SPTNPlotTab1.XLim = [0 50];
            app.SPTNPlotTab1.YLim = [0 20];
            app.SPTNPlotTab1.YDir = 'reverse';
            app.SPTNPlotTab1.XTick = [0 10 20 30 40 50];
            app.SPTNPlotTab1.XGrid = 'on';
            app.SPTNPlotTab1.XMinorGrid = 'on';
            app.SPTNPlotTab1.YGrid = 'on';
            app.SPTNPlotTab1.Position = [686 22 202 543];

            % Create ProgressTab1
            app.ProgressTab1 = uilabel(app.SoilInvestigationDataTab);
            app.ProgressTab1.HorizontalAlignment = 'right';
            app.ProgressTab1.VerticalAlignment = 'top';
            app.ProgressTab1.Position = [810 -5 80 22];
            app.ProgressTab1.Text = '-';

            % Create SaveChangesButton
            app.SaveChangesButton = uibutton(app.SoilInvestigationDataTab, 'push');
            app.SaveChangesButton.ButtonPushedFcn = createCallbackFcn(app, @SaveChangesButtonPushed, true);
            app.SaveChangesButton.Position = [560 21 98 27];
            app.SaveChangesButton.Text = 'Save Changes';

            % Create SoilInvestigationDataPanel
            app.SoilInvestigationDataPanel = uipanel(app.SoilInvestigationDataTab);
            app.SoilInvestigationDataPanel.Title = 'Soil Investigation Data';
            app.SoilInvestigationDataPanel.Position = [20 63 637 371];

            % Create SoilInvestigationDataPlotTable
            app.SoilInvestigationDataPlotTable = uitable(app.SoilInvestigationDataPanel);
            app.SoilInvestigationDataPlotTable.ColumnName = {'Borehole ID'; 'x-coordinate'; 'y-coordinate'; 'Ground Surface Elevation (m)'; 'Groundwater Level (m)'; 'Depth (m)'; 'SPT-N (N)'; 'Soil Type/Classification'; 'Unit Weight (kN/m3)'; '% Passing #200 Sieve (%)'; 'D50 (mm)'; 'Participates in Liquefaction?'};
            app.SoilInvestigationDataPlotTable.RowName = {};
            app.SoilInvestigationDataPlotTable.ColumnSortable = true;
            app.SoilInvestigationDataPlotTable.ColumnEditable = true;
            app.SoilInvestigationDataPlotTable.Position = [10 25 617 317];

            % Create DataImportandSelectionPanel
            app.DataImportandSelectionPanel = uipanel(app.SoilInvestigationDataTab);
            app.DataImportandSelectionPanel.Title = 'Data Import and Selection';
            app.DataImportandSelectionPanel.BackgroundColor = [0.902 0.902 0.902];
            app.DataImportandSelectionPanel.Position = [266 455 392 109];

            % Create SelectBoreholeDropDown
            app.SelectBoreholeDropDown = uidropdown(app.DataImportandSelectionPanel);
            app.SelectBoreholeDropDown.Items = {};
            app.SelectBoreholeDropDown.ValueChangedFcn = createCallbackFcn(app, @SelectBoreholeDropDownValueChanged, true);
            app.SelectBoreholeDropDown.Position = [117 18 261 26];
            app.SelectBoreholeDropDown.Value = {};

            % Create ResetButtonTab1
            app.ResetButtonTab1 = uibutton(app.DataImportandSelectionPanel, 'push');
            app.ResetButtonTab1.ButtonPushedFcn = createCallbackFcn(app, @ResetButtonTab1ButtonPushed, true);
            app.ResetButtonTab1.Position = [264 55 113 28];
            app.ResetButtonTab1.Text = 'Reset';

            % Create SelectBoreholeDropDownLabel
            app.SelectBoreholeDropDownLabel = uilabel(app.DataImportandSelectionPanel);
            app.SelectBoreholeDropDownLabel.HorizontalAlignment = 'right';
            app.SelectBoreholeDropDownLabel.Position = [12 20 90 22];
            app.SelectBoreholeDropDownLabel.Text = 'Select Borehole';

            % Create ImportDataButton
            app.ImportDataButton = uibutton(app.DataImportandSelectionPanel, 'push');
            app.ImportDataButton.ButtonPushedFcn = createCallbackFcn(app, @ImportDataButtonPushed, true);
            app.ImportDataButton.FontWeight = 'bold';
            app.ImportDataButton.Position = [11 54 192 29];
            app.ImportDataButton.Text = 'Import Data';

            % Create SPTLiqv_1_0_Label
            app.SPTLiqv_1_0_Label = uipanel(app.SoilInvestigationDataTab);
            app.SPTLiqv_1_0_Label.Position = [20 455 232 110];

            % Create SPTNBasedLiquefactionAssessmentSoftware
            app.SPTNBasedLiquefactionAssessmentSoftware = uilabel(app.SPTLiqv_1_0_Label);
            app.SPTNBasedLiquefactionAssessmentSoftware.VerticalAlignment = 'top';
            app.SPTNBasedLiquefactionAssessmentSoftware.FontSize = 8;
            app.SPTNBasedLiquefactionAssessmentSoftware.FontWeight = 'bold';
            app.SPTNBasedLiquefactionAssessmentSoftware.Position = [9 54 224 15];
            app.SPTNBasedLiquefactionAssessmentSoftware.Text = 'SPT-N Based Liquefaction Assessment Software';

            % Create GeotechnicalEngineeringLabKunsanNationalUniversityLabel
            app.GeotechnicalEngineeringLabKunsanNationalUniversityLabel = uilabel(app.SPTLiqv_1_0_Label);
            app.GeotechnicalEngineeringLabKunsanNationalUniversityLabel.VerticalAlignment = 'top';
            app.GeotechnicalEngineeringLabKunsanNationalUniversityLabel.WordWrap = 'on';
            app.GeotechnicalEngineeringLabKunsanNationalUniversityLabel.FontSize = 10;
            app.GeotechnicalEngineeringLabKunsanNationalUniversityLabel.FontAngle = 'italic';
            app.GeotechnicalEngineeringLabKunsanNationalUniversityLabel.Position = [47 10 176 34];
            app.GeotechnicalEngineeringLabKunsanNationalUniversityLabel.Text = {'Geotechnical Engineering Laboratory'; 'Kunsan National University, Republic of Korea'};

            % Create KSNULogo
            app.KSNULogo = uiimage(app.SPTLiqv_1_0_Label);
            app.KSNULogo.Position = [6 7 42 41];
            app.KSNULogo.ImageSource = 'ksnu.png';

            % Create SPTLiqLabel
            app.SPTLiqLabel = uilabel(app.SPTLiqv_1_0_Label);
            app.SPTLiqLabel.FontSize = 30;
            app.SPTLiqLabel.FontWeight = 'bold';
            app.SPTLiqLabel.Position = [8 65 123 49];
            app.SPTLiqLabel.Text = 'SPT-Liq';

            % Create v10Label
            app.v10Label = uilabel(app.SPTLiqv_1_0_Label);
            app.v10Label.VerticalAlignment = 'top';
            app.v10Label.FontSize = 11;
            app.v10Label.FontWeight = 'bold';
            app.v10Label.Position = [123 82 87 22];
            app.v10Label.Text = 'v1.0';

            % Create LiquefactionAssessmentTab
            app.LiquefactionAssessmentTab = uitab(app.TabGroup);
            app.LiquefactionAssessmentTab.Title = 'Liquefaction Assessment';

            % Create ProgressTab2
            app.ProgressTab2 = uilabel(app.LiquefactionAssessmentTab);
            app.ProgressTab2.HorizontalAlignment = 'right';
            app.ProgressTab2.VerticalAlignment = 'top';
            app.ProgressTab2.Position = [810 -5 80 22];
            app.ProgressTab2.Text = '-';

            % Create CalculateButtonTab2
            app.CalculateButtonTab2 = uibutton(app.LiquefactionAssessmentTab, 'push');
            app.CalculateButtonTab2.ButtonPushedFcn = createCallbackFcn(app, @CalculateButtonTab2Pushed, true);
            app.CalculateButtonTab2.FontWeight = 'bold';
            app.CalculateButtonTab2.Enable = 'off';
            app.CalculateButtonTab2.Position = [543 397 100 23];
            app.CalculateButtonTab2.Text = 'Calculate';

            % Create ResetButtonTab2
            app.ResetButtonTab2 = uibutton(app.LiquefactionAssessmentTab, 'push');
            app.ResetButtonTab2.ButtonPushedFcn = createCallbackFcn(app, @ResetButtonTab2Pushed, true);
            app.ResetButtonTab2.Position = [672 398 100 22];
            app.ResetButtonTab2.Text = 'Reset';

            % Create ExportResultsButtonTab2
            app.ExportResultsButtonTab2 = uibutton(app.LiquefactionAssessmentTab, 'push');
            app.ExportResultsButtonTab2.ButtonPushedFcn = createCallbackFcn(app, @ExportResultsButtonTab2Pushed, true);
            app.ExportResultsButtonTab2.Position = [790 20 98 27];
            app.ExportResultsButtonTab2.Text = 'Export Results';

            % Create LiquefactionAssessmentResultsPanel
            app.LiquefactionAssessmentResultsPanel = uipanel(app.LiquefactionAssessmentTab);
            app.LiquefactionAssessmentResultsPanel.Title = 'Liquefaction Assessment Results';
            app.LiquefactionAssessmentResultsPanel.Position = [21 54 866 306];

            % Create LiquefactionAssessmentResultsTable
            app.LiquefactionAssessmentResultsTable = uitable(app.LiquefactionAssessmentResultsPanel);
            app.LiquefactionAssessmentResultsTable.ColumnName = {'Borehole ID'; 'x-coordinate'; 'y-coordinate'; 'Ground Surface Elevation (m)'; 'Depth to The Water Table (m)'; 'Depth (m)'; 'Soil Type/Classification'; 'Unit Weight (kN/m3)'; 'Fines Content (%)'; 'D50 (mm)'; 'Stress Reduction Coefficient (rd)'; 'Effective Vertical Stress (kN/m3)'; 'Total Vertical Stress (kN/m3)'; 'N'; 'N60'; '(N1)60'; 'CSR'; 'CRR'; 'MSF'; 'Factor of Safety (FS)'; 'F.w(z)'; 'Liquefaction Potential Index (PL)'};
            app.LiquefactionAssessmentResultsTable.RowName = {};
            app.LiquefactionAssessmentResultsTable.Position = [8 9 846 268];

            % Create CorrectionFactorforSPTNvaluePanel
            app.CorrectionFactorforSPTNvaluePanel = uipanel(app.LiquefactionAssessmentTab);
            app.CorrectionFactorforSPTNvaluePanel.Title = 'Correction Factor for SPT N-value ';
            app.CorrectionFactorforSPTNvaluePanel.BackgroundColor = [0.902 0.902 0.902];
            app.CorrectionFactorforSPTNvaluePanel.Position = [440 462 409 112];

            % Create BoreholeDiameterCBDropDownLabel
            app.BoreholeDiameterCBDropDownLabel = uilabel(app.CorrectionFactorforSPTNvaluePanel);
            app.BoreholeDiameterCBDropDownLabel.HorizontalAlignment = 'right';
            app.BoreholeDiameterCBDropDownLabel.Position = [7 36 129 22];
            app.BoreholeDiameterCBDropDownLabel.Text = 'Borehole Diameter, CB';

            % Create BoreholeDiameterCBTab2
            app.BoreholeDiameterCBTab2 = uidropdown(app.CorrectionFactorforSPTNvaluePanel);
            app.BoreholeDiameterCBTab2.Items = {'65-115 mm', '150 mm', '200 mm'};
            app.BoreholeDiameterCBTab2.Position = [203 36 196 22];
            app.BoreholeDiameterCBTab2.Value = '200 mm';

            % Create SamplingMethodCSDropDownLabel
            app.SamplingMethodCSDropDownLabel = uilabel(app.CorrectionFactorforSPTNvaluePanel);
            app.SamplingMethodCSDropDownLabel.HorizontalAlignment = 'right';
            app.SamplingMethodCSDropDownLabel.Position = [7 9 122 22];
            app.SamplingMethodCSDropDownLabel.Text = 'Sampling Method, CS';

            % Create SamplingMethodCSTab2
            app.SamplingMethodCSTab2 = uidropdown(app.CorrectionFactorforSPTNvaluePanel);
            app.SamplingMethodCSTab2.Items = {'Standard Sampler', 'Sampler Without Liners'};
            app.SamplingMethodCSTab2.Position = [203 9 196 22];
            app.SamplingMethodCSTab2.Value = 'Standard Sampler';

            % Create EnergyRatioCEEditFieldLabel
            app.EnergyRatioCEEditFieldLabel = uilabel(app.CorrectionFactorforSPTNvaluePanel);
            app.EnergyRatioCEEditFieldLabel.HorizontalAlignment = 'right';
            app.EnergyRatioCEEditFieldLabel.Position = [7 62 98 22];
            app.EnergyRatioCEEditFieldLabel.Text = 'Energy Ratio, CE';

            % Create EnergyRatioCETab2
            app.EnergyRatioCETab2 = uieditfield(app.CorrectionFactorforSPTNvaluePanel, 'numeric');
            app.EnergyRatioCETab2.Position = [202 62 197 21];
            app.EnergyRatioCETab2.Value = 0.789;

            % Create OtherParametersPanel
            app.OtherParametersPanel = uipanel(app.LiquefactionAssessmentTab);
            app.OtherParametersPanel.Title = 'Other Parameters';
            app.OtherParametersPanel.BackgroundColor = [0.902 0.902 0.902];
            app.OtherParametersPanel.Position = [20 366 399 90];

            % Create AtmosphericPressurekPaEditFieldLabel
            app.AtmosphericPressurekPaEditFieldLabel = uilabel(app.OtherParametersPanel);
            app.AtmosphericPressurekPaEditFieldLabel.HorizontalAlignment = 'right';
            app.AtmosphericPressurekPaEditFieldLabel.Position = [8 46 156 22];
            app.AtmosphericPressurekPaEditFieldLabel.Text = 'Atmospheric Pressure (kPa)';

            % Create AtmosphericPressureEditField
            app.AtmosphericPressureEditField = uieditfield(app.OtherParametersPanel, 'numeric');
            app.AtmosphericPressureEditField.Position = [200 48 180 19];
            app.AtmosphericPressureEditField.Value = 100;

            % Create PeakHorizontalAccelerationgEditFieldLabel
            app.PeakHorizontalAccelerationgEditFieldLabel = uilabel(app.OtherParametersPanel);
            app.PeakHorizontalAccelerationgEditFieldLabel.HorizontalAlignment = 'right';
            app.PeakHorizontalAccelerationgEditFieldLabel.Position = [8 24 178 22];
            app.PeakHorizontalAccelerationgEditFieldLabel.Text = 'Peak Horizontal Acceleration (g)';

            % Create PeakHorizontalAccelerationEditField
            app.PeakHorizontalAccelerationEditField = uieditfield(app.OtherParametersPanel, 'numeric');
            app.PeakHorizontalAccelerationEditField.Position = [200 26 180 19];
            app.PeakHorizontalAccelerationEditField.Value = 0.2;

            % Create MomentMagnitudeMwLabel
            app.MomentMagnitudeMwLabel = uilabel(app.OtherParametersPanel);
            app.MomentMagnitudeMwLabel.HorizontalAlignment = 'right';
            app.MomentMagnitudeMwLabel.Position = [8 2 134 22];
            app.MomentMagnitudeMwLabel.Text = 'Moment Magnitude, Mw';

            % Create MomentMagnitudeEditField
            app.MomentMagnitudeEditField = uieditfield(app.OtherParametersPanel, 'numeric');
            app.MomentMagnitudeEditField.Position = [200 4 180 19];
            app.MomentMagnitudeEditField.Value = 6.5;

            % Create LiquefactionAssessmentMethodPanel
            app.LiquefactionAssessmentMethodPanel = uipanel(app.LiquefactionAssessmentTab);
            app.LiquefactionAssessmentMethodPanel.Title = 'Liquefaction Assessment Method';
            app.LiquefactionAssessmentMethodPanel.BackgroundColor = [0.902 0.902 0.902];
            app.LiquefactionAssessmentMethodPanel.Position = [20 462 399 112];

            % Create MagnitudeScalingFactorMSFDropDownLabel
            app.MagnitudeScalingFactorMSFDropDownLabel = uilabel(app.LiquefactionAssessmentMethodPanel);
            app.MagnitudeScalingFactorMSFDropDownLabel.HorizontalAlignment = 'right';
            app.MagnitudeScalingFactorMSFDropDownLabel.Position = [8 34 174 22];
            app.MagnitudeScalingFactorMSFDropDownLabel.Text = 'Magnitude Scaling Factor, MSF';

            % Create MagnitudeScalingFactorMSFDropDown
            app.MagnitudeScalingFactorMSFDropDown = uidropdown(app.LiquefactionAssessmentMethodPanel);
            app.MagnitudeScalingFactorMSFDropDown.Items = {'Revised Idriss Scaling Factor', 'Input MSF Value'};
            app.MagnitudeScalingFactorMSFDropDown.ValueChangedFcn = createCallbackFcn(app, @MagnitudeScalingFactorMSFDropDownValueChanged, true);
            app.MagnitudeScalingFactorMSFDropDown.Position = [200 34 180 22];
            app.MagnitudeScalingFactorMSFDropDown.Value = 'Revised Idriss Scaling Factor';

            % Create CRR75EquationDropDownLabel
            app.CRR75EquationDropDownLabel = uilabel(app.LiquefactionAssessmentMethodPanel);
            app.CRR75EquationDropDownLabel.HorizontalAlignment = 'right';
            app.CRR75EquationDropDownLabel.Position = [8 61 99 22];
            app.CRR75EquationDropDownLabel.Text = 'CRR7.5 Equation';

            % Create CRR75EquationDropDown
            app.CRR75EquationDropDown = uidropdown(app.LiquefactionAssessmentMethodPanel);
            app.CRR75EquationDropDown.Items = {'Japan Design Specification of Highway Bridge', 'Korean Liquefaction Assessment Method', 'Seed and Idriss', 'Youd et al'};
            app.CRR75EquationDropDown.ValueChangedFcn = createCallbackFcn(app, @CRR75EquationDropDownValueChanged, true);
            app.CRR75EquationDropDown.Position = [200 61 180 22];
            app.CRR75EquationDropDown.Value = 'Youd et al';

            % Create ManualMSFInputEditField
            app.ManualMSFInputEditField = uieditfield(app.LiquefactionAssessmentMethodPanel, 'numeric');
            app.ManualMSFInputEditField.Enable = 'off';
            app.ManualMSFInputEditField.Position = [200 9 180 19];
            app.ManualMSFInputEditField.Value = 1.19;

            % Create MSFValuesListButton
            app.MSFValuesListButton = uibutton(app.LiquefactionAssessmentMethodPanel, 'push');
            app.MSFValuesListButton.ButtonPushedFcn = createCallbackFcn(app, @MSFValuesListButtonPushed, true);
            app.MSFValuesListButton.Enable = 'off';
            app.MSFValuesListButton.Position = [79 6 102 22];
            app.MSFValuesListButton.Text = 'MSF Values';

            % Create SoilInvestigationDataPlotTab
            app.SoilInvestigationDataPlotTab = uitab(app.TabGroup);
            app.SoilInvestigationDataPlotTab.Title = 'Soil Investigation Data Plot';

            % Create GraphicalDisplayPanelTab3
            app.GraphicalDisplayPanelTab3 = uipanel(app.SoilInvestigationDataPlotTab);
            app.GraphicalDisplayPanelTab3.Title = 'Graphical Display';
            app.GraphicalDisplayPanelTab3.Position = [2 3 907 579];

            % Create D50Plot
            app.D50Plot = uiaxes(app.GraphicalDisplayPanelTab3);
            title(app.D50Plot, 'D50')
            xlabel(app.D50Plot, 'D50 (mm)')
            ylabel(app.D50Plot, 'Depth (m)')
            zlabel(app.D50Plot, 'Z')
            app.D50Plot.YLim = [0 20];
            app.D50Plot.YDir = 'reverse';
            app.D50Plot.XTickLabelRotation = 45;
            app.D50Plot.XMinorGrid = 'on';
            app.D50Plot.YGrid = 'on';
            app.D50Plot.Position = [573 26 212 514];

            % Create FCPlot
            app.FCPlot = uiaxes(app.GraphicalDisplayPanelTab3);
            title(app.FCPlot, 'Fines Content, FC')
            xlabel(app.FCPlot, 'FC (%)')
            ylabel(app.FCPlot, 'Depth (m)')
            zlabel(app.FCPlot, 'Z')
            app.FCPlot.XLim = [0 100];
            app.FCPlot.YLim = [0 20];
            app.FCPlot.YDir = 'reverse';
            app.FCPlot.XTick = [0 20 40 60 80 100];
            app.FCPlot.XTickLabelRotation = 45;
            app.FCPlot.XTickLabel = {'0'; '20'; '40'; '60'; '80'; '100'};
            app.FCPlot.XMinorGrid = 'on';
            app.FCPlot.YGrid = 'on';
            app.FCPlot.Position = [348 26 212 514];

            % Create SPTNPlotTab3
            app.SPTNPlotTab3 = uiaxes(app.GraphicalDisplayPanelTab3);
            title(app.SPTNPlotTab3, 'SPT-N')
            xlabel(app.SPTNPlotTab3, 'SPT-N')
            ylabel(app.SPTNPlotTab3, 'Depth (m)')
            zlabel(app.SPTNPlotTab3, 'Z')
            app.SPTNPlotTab3.XLim = [0 50];
            app.SPTNPlotTab3.YLim = [0 20];
            app.SPTNPlotTab3.YDir = 'reverse';
            app.SPTNPlotTab3.XTick = [0 10 20 30 40 50];
            app.SPTNPlotTab3.XGrid = 'on';
            app.SPTNPlotTab3.XMinorGrid = 'on';
            app.SPTNPlotTab3.YGrid = 'on';
            app.SPTNPlotTab3.Position = [124 26 212 514];

            % Create LiquefactionAssessmentPlotTab
            app.LiquefactionAssessmentPlotTab = uitab(app.TabGroup);
            app.LiquefactionAssessmentPlotTab.Title = 'Liquefaction Assessment Plot';

            % Create GraphicalDisplayPanelTab4
            app.GraphicalDisplayPanelTab4 = uipanel(app.LiquefactionAssessmentPlotTab);
            app.GraphicalDisplayPanelTab4.Title = 'Graphical Display';
            app.GraphicalDisplayPanelTab4.Position = [1 3 908 580];

            % Create LiqAssessment_Fwz
            app.LiqAssessment_Fwz = uiaxes(app.GraphicalDisplayPanelTab4);
            title(app.LiqAssessment_Fwz, 'F.w(z)')
            xlabel(app.LiqAssessment_Fwz, 'F.w(z)')
            ylabel(app.LiqAssessment_Fwz, 'Depth (m)')
            zlabel(app.LiqAssessment_Fwz, 'Z')
            app.LiqAssessment_Fwz.YLim = [0 20];
            app.LiqAssessment_Fwz.YDir = 'reverse';
            app.LiqAssessment_Fwz.XTick = [0 1 2 3 4 5 6 7 8 9 10];
            app.LiqAssessment_Fwz.XTickLabelRotation = 45;
            app.LiqAssessment_Fwz.XTickLabel = {'0'; '1'; '2'; '3'; '4'; '5'; '6'; '7'; '8'; '9'; '10'};
            app.LiqAssessment_Fwz.XMinorGrid = 'on';
            app.LiqAssessment_Fwz.YGrid = 'on';
            app.LiqAssessment_Fwz.Position = [663 25 210 511];

            % Create LiqAssessment_FS
            app.LiqAssessment_FS = uiaxes(app.GraphicalDisplayPanelTab4);
            title(app.LiqAssessment_FS, 'Factor of Safety, FS')
            xlabel(app.LiqAssessment_FS, 'FS')
            ylabel(app.LiqAssessment_FS, 'Depth (m)')
            zlabel(app.LiqAssessment_FS, 'Z')
            app.LiqAssessment_FS.YLim = [0 20];
            app.LiqAssessment_FS.YDir = 'reverse';
            app.LiqAssessment_FS.XGrid = 'on';
            app.LiqAssessment_FS.XMinorGrid = 'on';
            app.LiqAssessment_FS.YGrid = 'on';
            app.LiqAssessment_FS.Position = [447 26 199 510];

            % Create LiqAssessment_CRR
            app.LiqAssessment_CRR = uiaxes(app.GraphicalDisplayPanelTab4);
            title(app.LiqAssessment_CRR, 'Cyclic Resistance Ratio, CRR')
            xlabel(app.LiqAssessment_CRR, 'CRR')
            ylabel(app.LiqAssessment_CRR, 'Depth (m)')
            zlabel(app.LiqAssessment_CRR, 'Z')
            app.LiqAssessment_CRR.YLim = [0 20];
            app.LiqAssessment_CRR.YDir = 'reverse';
            app.LiqAssessment_CRR.XTickLabelRotation = 45;
            app.LiqAssessment_CRR.XMinorGrid = 'on';
            app.LiqAssessment_CRR.YGrid = 'on';
            app.LiqAssessment_CRR.Position = [237 25 193 511];

            % Create LiqAssessment_VerticalStress
            app.LiqAssessment_VerticalStress = uiaxes(app.GraphicalDisplayPanelTab4);
            title(app.LiqAssessment_VerticalStress, 'Vertical Stress Profile')
            xlabel(app.LiqAssessment_VerticalStress, 'Vertical Stress')
            ylabel(app.LiqAssessment_VerticalStress, 'Depth (m)')
            zlabel(app.LiqAssessment_VerticalStress, 'Z')
            app.LiqAssessment_VerticalStress.YLim = [0 20];
            app.LiqAssessment_VerticalStress.YDir = 'reverse';
            app.LiqAssessment_VerticalStress.XTickLabelRotation = 45;
            app.LiqAssessment_VerticalStress.XMinorGrid = 'on';
            app.LiqAssessment_VerticalStress.YGrid = 'on';
            app.LiqAssessment_VerticalStress.Position = [31 25 191 512];

            % Create ThreeDVisualizationTab
            app.ThreeDVisualizationTab = uitab(app.TabGroup);
            app.ThreeDVisualizationTab.Title = '3D Visualization';

            % Create PredictionResultsTable
            app.PredictionResultsTable = uitable(app.ThreeDVisualizationTab);
            app.PredictionResultsTable.ColumnName = {'x-coordinate'; 'y-coordinate'; 'Prediction'};
            app.PredictionResultsTable.RowName = {};
            app.PredictionResultsTable.Position = [308 22 580 96];

            % Create ProgressTab5
            app.ProgressTab5 = uilabel(app.ThreeDVisualizationTab);
            app.ProgressTab5.HorizontalAlignment = 'right';
            app.ProgressTab5.VerticalAlignment = 'top';
            app.ProgressTab5.Position = [810 -5 80 22];
            app.ProgressTab5.Text = '-';

            % Create GraphicalDisplayPanelTab5
            app.GraphicalDisplayPanelTab5 = uipanel(app.ThreeDVisualizationTab);
            app.GraphicalDisplayPanelTab5.Title = 'Graphical Display';
            app.GraphicalDisplayPanelTab5.Position = [291 132 619 451];

            % Create ThreeDimensionalPlot
            app.ThreeDimensionalPlot = uiaxes(app.GraphicalDisplayPanelTab5);
            title(app.ThreeDimensionalPlot, 'X-Y-Z View')
            xlabel(app.ThreeDimensionalPlot, 'x-coordinate')
            ylabel(app.ThreeDimensionalPlot, 'y-coordinate')
            zlabel(app.ThreeDimensionalPlot, 'Z')
            app.ThreeDimensionalPlot.FontWeight = 'bold';
            app.ThreeDimensionalPlot.Position = [17 8 579 416];

            % Create ExportResultsButtonTab5
            app.ExportResultsButtonTab5 = uibutton(app.ThreeDVisualizationTab, 'push');
            app.ExportResultsButtonTab5.ButtonPushedFcn = createCallbackFcn(app, @ExportPredictionResultsButtonPushed, true);
            app.ExportResultsButtonTab5.FontWeight = 'bold';
            app.ExportResultsButtonTab5.Enable = 'off';
            app.ExportResultsButtonTab5.Position = [189 35 93 29];
            app.ExportResultsButtonTab5.Text = 'Export Results';

            % Create PlotToTableButton
            app.PlotToTableButton = uibutton(app.ThreeDVisualizationTab, 'push');
            app.PlotToTableButton.ButtonPushedFcn = createCallbackFcn(app, @PlotToTableButtonPushed, true);
            app.PlotToTableButton.FontWeight = 'bold';
            app.PlotToTableButton.Enable = 'off';
            app.PlotToTableButton.Position = [188 75 94 29];
            app.PlotToTableButton.Text = 'Plot to Table';

            % Create PlotMapButton
            app.PlotMapButton = uibutton(app.ThreeDVisualizationTab, 'push');
            app.PlotMapButton.ButtonPushedFcn = createCallbackFcn(app, @PlotMapButtonPushed, true);
            app.PlotMapButton.FontWeight = 'bold';
            app.PlotMapButton.Enable = 'off';
            app.PlotMapButton.Position = [154 194 108 27];
            app.PlotMapButton.Text = 'Plot Map';

            % Create PredictionCoordinatePanel
            app.PredictionCoordinatePanel = uipanel(app.ThreeDVisualizationTab);
            app.PredictionCoordinatePanel.Enable = 'off';
            app.PredictionCoordinatePanel.Title = 'Prediction Coordinate';
            app.PredictionCoordinatePanel.BackgroundColor = [0.902 0.902 0.902];
            app.PredictionCoordinatePanel.Position = [18 22 162 96];

            % Create xcoordinateLabel_3
            app.xcoordinateLabel_3 = uilabel(app.PredictionCoordinatePanel);
            app.xcoordinateLabel_3.HorizontalAlignment = 'right';
            app.xcoordinateLabel_3.Position = [1 44 72 22];
            app.xcoordinateLabel_3.Text = 'x-coordinate';

            % Create ycoordinateLabel_3
            app.ycoordinateLabel_3 = uilabel(app.PredictionCoordinatePanel);
            app.ycoordinateLabel_3.HorizontalAlignment = 'right';
            app.ycoordinateLabel_3.Position = [1 18 72 22];
            app.ycoordinateLabel_3.Text = 'y-coordinate';

            % Create ycoordinatePredictionEditField
            app.ycoordinatePredictionEditField = uieditfield(app.PredictionCoordinatePanel, 'numeric');
            app.ycoordinatePredictionEditField.Position = [80 17 77 24];

            % Create xcoordinatePredictionEditField
            app.xcoordinatePredictionEditField = uieditfield(app.PredictionCoordinatePanel, 'numeric');
            app.xcoordinatePredictionEditField.Position = [80 43 77 24];

            % Create ViewButtonGroup
            app.ViewButtonGroup = uibuttongroup(app.ThreeDVisualizationTab);
            app.ViewButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @ViewButtonGroupSelectionChanged, true);
            app.ViewButtonGroup.Enable = 'off';
            app.ViewButtonGroup.Title = 'View';
            app.ViewButtonGroup.BackgroundColor = [0.902 0.902 0.902];
            app.ViewButtonGroup.Position = [17 151 106 112];

            % Create TopViewButton
            app.TopViewButton = uiradiobutton(app.ViewButtonGroup);
            app.TopViewButton.Text = 'Top View';
            app.TopViewButton.Position = [19 45 72 22];

            % Create YZViewButton
            app.YZViewButton = uiradiobutton(app.ViewButtonGroup);
            app.YZViewButton.Text = 'Y-Z View';
            app.YZViewButton.Position = [19 3 71 22];

            % Create ThreeDViewButton
            app.ThreeDViewButton = uiradiobutton(app.ViewButtonGroup);
            app.ThreeDViewButton.Text = '3D View';
            app.ThreeDViewButton.Position = [19 65 71 22];
            app.ThreeDViewButton.Value = true;

            % Create XZViewButton
            app.XZViewButton = uiradiobutton(app.ViewButtonGroup);
            app.XZViewButton.Text = 'X-Z View';
            app.XZViewButton.Position = [19 24 71 22];

            % Create SpacingPanel
            app.SpacingPanel = uipanel(app.ThreeDVisualizationTab);
            app.SpacingPanel.Enable = 'off';
            app.SpacingPanel.Title = 'Spacing';
            app.SpacingPanel.BackgroundColor = [0.902 0.902 0.902];
            app.SpacingPanel.Position = [17 271 258 111];

            % Create xspacingLabel
            app.xspacingLabel = uilabel(app.SpacingPanel);
            app.xspacingLabel.HorizontalAlignment = 'right';
            app.xspacingLabel.Position = [21 62 56 22];
            app.xspacingLabel.Text = 'x spacing';

            % Create xspacingEditField
            app.xspacingEditField = uieditfield(app.SpacingPanel, 'numeric');
            app.xspacingEditField.Position = [131 61 117 24];
            app.xspacingEditField.Value = 1;

            % Create yspacingLabel
            app.yspacingLabel = uilabel(app.SpacingPanel);
            app.yspacingLabel.HorizontalAlignment = 'right';
            app.yspacingLabel.Position = [21 35 56 22];
            app.yspacingLabel.Text = 'y spacing';

            % Create yspacingEditField
            app.yspacingEditField = uieditfield(app.SpacingPanel, 'numeric');
            app.yspacingEditField.Position = [131 34 117 24];
            app.yspacingEditField.Value = 1;

            % Create zspacingLabel
            app.zspacingLabel = uilabel(app.SpacingPanel);
            app.zspacingLabel.HorizontalAlignment = 'right';
            app.zspacingLabel.Position = [21 8 56 22];
            app.zspacingLabel.Text = 'z spacing';

            % Create zspacingEditField
            app.zspacingEditField = uieditfield(app.SpacingPanel, 'numeric');
            app.zspacingEditField.Position = [131 7 117 24];
            app.zspacingEditField.Value = 1;

            % Create SliceLocationsPanel
            app.SliceLocationsPanel = uipanel(app.ThreeDVisualizationTab);
            app.SliceLocationsPanel.Enable = 'off';
            app.SliceLocationsPanel.Title = 'Slice Locations';
            app.SliceLocationsPanel.BackgroundColor = [0.902 0.902 0.902];
            app.SliceLocationsPanel.Position = [17 391 258 118];

            % Create xcoordinateLabel_2
            app.xcoordinateLabel_2 = uilabel(app.SliceLocationsPanel);
            app.xcoordinateLabel_2.HorizontalAlignment = 'right';
            app.xcoordinateLabel_2.Position = [13 66 72 22];
            app.xcoordinateLabel_2.Text = 'x-coordinate';

            % Create ycoordinateLabel_2
            app.ycoordinateLabel_2 = uilabel(app.SliceLocationsPanel);
            app.ycoordinateLabel_2.HorizontalAlignment = 'right';
            app.ycoordinateLabel_2.Position = [13 39 72 22];
            app.ycoordinateLabel_2.Text = 'y-coordinate';

            % Create zcoordinateLabel
            app.zcoordinateLabel = uilabel(app.SliceLocationsPanel);
            app.zcoordinateLabel.HorizontalAlignment = 'right';
            app.zcoordinateLabel.Position = [13 12 72 22];
            app.zcoordinateLabel.Text = 'z-coordinate';

            % Create zcoordinateSliceEditField
            app.zcoordinateSliceEditField = uieditfield(app.SliceLocationsPanel, 'numeric');
            app.zcoordinateSliceEditField.Position = [130 11 119 24];
            app.zcoordinateSliceEditField.Value = -5;

            % Create ycoordinateSliceEditField
            app.ycoordinateSliceEditField = uieditfield(app.SliceLocationsPanel, 'numeric');
            app.ycoordinateSliceEditField.Position = [130 38 119 24];

            % Create xcoordinateSliceEditField
            app.xcoordinateSliceEditField = uieditfield(app.SliceLocationsPanel, 'numeric');
            app.xcoordinateSliceEditField.Position = [130 65 119 24];

            % Create TobePlottedPanel
            app.TobePlottedPanel = uipanel(app.ThreeDVisualizationTab);
            app.TobePlottedPanel.Enable = 'off';
            app.TobePlottedPanel.Title = 'To be Plotted';
            app.TobePlottedPanel.BackgroundColor = [0.902 0.902 0.902];
            app.TobePlottedPanel.Position = [17 517 258 57];

            % Create TobePlottedDropDown
            app.TobePlottedDropDown = uidropdown(app.TobePlottedPanel);
            app.TobePlottedDropDown.Items = {'Ground Surface Elevation', 'Groundwater Level', 'SPT-N', 'Soil Type', '% Passing #200 Sieve', 'D50', 'Safety Factor (FS)', 'Liquefaction Potential (PL)'};
            app.TobePlottedDropDown.ValueChangedFcn = createCallbackFcn(app, @TobePlottedValueChanged, true);
            app.TobePlottedDropDown.Position = [11 5 239 27];
            app.TobePlottedDropDown.Value = 'Ground Surface Elevation';

            % Create PredictedSoilIndexPlotTab
            app.PredictedSoilIndexPlotTab = uitab(app.TabGroup);
            app.PredictedSoilIndexPlotTab.Title = 'Predicted Soil Index Plot';

            % Create GraphicalDisplayPanelTab6
            app.GraphicalDisplayPanelTab6 = uipanel(app.PredictedSoilIndexPlotTab);
            app.GraphicalDisplayPanelTab6.Title = 'Graphical Display';
            app.GraphicalDisplayPanelTab6.Position = [2 3 907 579];

            % Create D50PredictedPlot
            app.D50PredictedPlot = uiaxes(app.GraphicalDisplayPanelTab6);
            title(app.D50PredictedPlot, 'D50')
            xlabel(app.D50PredictedPlot, 'D50 (mm)')
            ylabel(app.D50PredictedPlot, 'Depth (m)')
            zlabel(app.D50PredictedPlot, 'Z')
            app.D50PredictedPlot.YLim = [0 20];
            app.D50PredictedPlot.YDir = 'reverse';
            app.D50PredictedPlot.XTickLabelRotation = 45;
            app.D50PredictedPlot.XMinorGrid = 'on';
            app.D50PredictedPlot.YGrid = 'on';
            app.D50PredictedPlot.Position = [573 26 212 514];

            % Create FCPredictedPlot
            app.FCPredictedPlot = uiaxes(app.GraphicalDisplayPanelTab6);
            title(app.FCPredictedPlot, 'Fines Content, FC')
            xlabel(app.FCPredictedPlot, 'FC (%)')
            ylabel(app.FCPredictedPlot, 'Depth (m)')
            zlabel(app.FCPredictedPlot, 'Z')
            app.FCPredictedPlot.XLim = [0 100];
            app.FCPredictedPlot.YLim = [0 20];
            app.FCPredictedPlot.YDir = 'reverse';
            app.FCPredictedPlot.XTick = [0 20 40 60 80 100];
            app.FCPredictedPlot.XTickLabelRotation = 45;
            app.FCPredictedPlot.XTickLabel = {'0'; '20'; '40'; '60'; '80'; '100'};
            app.FCPredictedPlot.XMinorGrid = 'on';
            app.FCPredictedPlot.YGrid = 'on';
            app.FCPredictedPlot.Position = [348 26 212 514];

            % Create SPTNPredictedPlot
            app.SPTNPredictedPlot = uiaxes(app.GraphicalDisplayPanelTab6);
            title(app.SPTNPredictedPlot, 'SPT-N')
            xlabel(app.SPTNPredictedPlot, 'SPT-N')
            ylabel(app.SPTNPredictedPlot, 'Depth (m)')
            zlabel(app.SPTNPredictedPlot, 'Z')
            app.SPTNPredictedPlot.XLim = [0 50];
            app.SPTNPredictedPlot.YLim = [0 20];
            app.SPTNPredictedPlot.YDir = 'reverse';
            app.SPTNPredictedPlot.XTick = [0 10 20 30 40 50];
            app.SPTNPredictedPlot.XGrid = 'on';
            app.SPTNPredictedPlot.XMinorGrid = 'on';
            app.SPTNPredictedPlot.YGrid = 'on';
            app.SPTNPredictedPlot.Position = [124 26 212 514];

            % Create LiquefactionAssessmentPlotPredictionTab
            app.LiquefactionAssessmentPlotPredictionTab = uitab(app.TabGroup);
            app.LiquefactionAssessmentPlotPredictionTab.Title = 'Liquefaction Assessment Plot (Prediction)';

            % Create GraphicalDisplayPanelTab7
            app.GraphicalDisplayPanelTab7 = uipanel(app.LiquefactionAssessmentPlotPredictionTab);
            app.GraphicalDisplayPanelTab7.Title = 'Graphical Display';
            app.GraphicalDisplayPanelTab7.Position = [1 3 908 580];

            % Create LPIPredictedPlot
            app.LPIPredictedPlot = uiaxes(app.GraphicalDisplayPanelTab7);
            title(app.LPIPredictedPlot, 'F.w(z)')
            xlabel(app.LPIPredictedPlot, 'F.w(z)')
            ylabel(app.LPIPredictedPlot, 'Depth (m)')
            zlabel(app.LPIPredictedPlot, 'Z')
            app.LPIPredictedPlot.YLim = [0 20];
            app.LPIPredictedPlot.YDir = 'reverse';
            app.LPIPredictedPlot.XTick = [0 1 2 3 4 5 6 7 8 9 10];
            app.LPIPredictedPlot.XTickLabelRotation = 45;
            app.LPIPredictedPlot.XTickLabel = {'0'; '1'; '2'; '3'; '4'; '5'; '6'; '7'; '8'; '9'; '10'};
            app.LPIPredictedPlot.XMinorGrid = 'on';
            app.LPIPredictedPlot.YGrid = 'on';
            app.LPIPredictedPlot.Position = [663 25 210 511];

            % Create FSPredictedPlot
            app.FSPredictedPlot = uiaxes(app.GraphicalDisplayPanelTab7);
            title(app.FSPredictedPlot, 'Factor of Safety, FS')
            xlabel(app.FSPredictedPlot, 'FS')
            ylabel(app.FSPredictedPlot, 'Depth (m)')
            zlabel(app.FSPredictedPlot, 'Z')
            app.FSPredictedPlot.YLim = [0 20];
            app.FSPredictedPlot.YDir = 'reverse';
            app.FSPredictedPlot.XGrid = 'on';
            app.FSPredictedPlot.XMinorGrid = 'on';
            app.FSPredictedPlot.YGrid = 'on';
            app.FSPredictedPlot.Position = [447 26 199 510];

            % Create CRRPredictedPlot
            app.CRRPredictedPlot = uiaxes(app.GraphicalDisplayPanelTab7);
            title(app.CRRPredictedPlot, 'Cyclic Resistance Ratio, CRR')
            xlabel(app.CRRPredictedPlot, 'CRR')
            ylabel(app.CRRPredictedPlot, 'Depth (m)')
            zlabel(app.CRRPredictedPlot, 'Z')
            app.CRRPredictedPlot.YLim = [0 20];
            app.CRRPredictedPlot.YDir = 'reverse';
            app.CRRPredictedPlot.XTickLabelRotation = 45;
            app.CRRPredictedPlot.XMinorGrid = 'on';
            app.CRRPredictedPlot.YGrid = 'on';
            app.CRRPredictedPlot.Position = [237 25 193 511];

            % Create VerticalStressPredictedPlot
            app.VerticalStressPredictedPlot = uiaxes(app.GraphicalDisplayPanelTab7);
            title(app.VerticalStressPredictedPlot, 'Vertical Stress Profile')
            xlabel(app.VerticalStressPredictedPlot, 'Vertical Stress')
            ylabel(app.VerticalStressPredictedPlot, 'Depth (m)')
            zlabel(app.VerticalStressPredictedPlot, 'Z')
            app.VerticalStressPredictedPlot.YLim = [0 20];
            app.VerticalStressPredictedPlot.YDir = 'reverse';
            app.VerticalStressPredictedPlot.XTickLabelRotation = 45;
            app.VerticalStressPredictedPlot.XMinorGrid = 'on';
            app.VerticalStressPredictedPlot.YGrid = 'on';
            app.VerticalStressPredictedPlot.Position = [31 25 191 512];

            % Show the figure after all components are created
            app.SPTLiqv10UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = SPTLiq_v10_Code_MATLAB

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.SPTLiqv10UIFigure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.SPTLiqv10UIFigure)
        end
    end
end