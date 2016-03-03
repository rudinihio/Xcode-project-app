//
//  DetailViewController.m
//  0%Finanzierung- Zähne gut, alles gut
//
//  Created by Filip Lexmann on 17/11/15.
//  Copyright © 2015 Filip Lexmann. All rights reserved.
//
#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.DetailTitle.text = _DetailModal[0];
    self.DetailDescription.text = _DetailModal[1];
    self.DetailImageview.image = [UIImage imageNamed:_DetailModal[2]];
    
    
    
    self.navigationItem.title = _DetailModal[0];
    
    
    
    if ([self.DetailTitle.text isEqualToString:@"Vorteile"]) {
        self.Information.text = @"0% Zinsen bis zu einer Laufzeit von 60 Monaten" ;
        self.In.text = @"Flexible Kredithöhe ab 100,00 Euro" ;
        self.Inf.text = @"Keine versteckten Kosten für Zahnarzt und Patienten" ;
        
        self.Info.text =@"Weitere Vorteile für Zahnarzt und Patienten";
        
        self.Infor.text = @"Einfache Antragstellung mit nur einem Formular";
        self.Inform.text = @"Begleichung der Rechnung ist sicher und planbar";
        self.Informa.text = @"Erfolgt sofort nach Abschluss der Behandlung";
        self.Informat.text = @"Mehr finanzieller Spielraum";

    
        
    }
    
    if ([self.DetailTitle.text isEqualToString:@"4 Schritte"]) {
      
        self.Information.text = @"Schritt 1 - Der Heil- und Kostenplan";
        self.In.text = @"Der Zahnarzt wird einen Heil- und Kostenplan erstellen." ;
        self.Inf.text = @"Schritt 2 - Die Finanzierungsanfrage- Vorantrag schicken.";
        
        self.Info.text =@"Premium Zahnersatz gibt es nur bei Lexmann";
        
        self.Infor.text = @"Schritt 3 - Bereitstellung der Finanzierungssumme";
        self.Inform.text = @"Prüfung der Kreditunterlagen.";
        self.Informa.text = @"Schritt 4 - Auszahlung der Finanzierungssumme";
        self.Informat.text = @"Sendung der Zahnarztrechnung.";

        
    }

    
    if ([self.DetailTitle.text isEqualToString:@"Wo Sie uns finden"]) {
        

        self.Information.text = @"";
    }
    
    if ([self.DetailTitle.text isEqualToString:@"Unsere Videos"]) {
        
        self.Information.text = @"";
    }
    
    if ([self.DetailTitle.text isEqualToString:@"Unsere Website"]) {
        

        self.Information.text = @"";
    }
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end

