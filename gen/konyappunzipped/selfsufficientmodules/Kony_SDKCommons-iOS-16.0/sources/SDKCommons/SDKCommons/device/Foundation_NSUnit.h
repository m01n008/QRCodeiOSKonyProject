#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSUnit_symbols(JSContext*);
@protocol NSUnitConverterInstanceExports<JSExport>
-(double) baseUnitValueFromValue: (double) value ;
-(double) valueFromBaseUnitValue: (double) baseUnitValue ;
@end
@protocol NSUnitConverterClassExports<JSExport>
@end
@protocol NSUnitConverterLinearInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@property (readonly) double coefficient;
@property (readonly) double constant;
JSExportAs(initWithCoefficient,
-(id) jsinitWithCoefficient: (double) coefficient );
JSExportAs(initWithCoefficientConstant,
-(id) jsinitWithCoefficient: (double) coefficient constant: (double) constant );
@end
@protocol NSUnitConverterLinearClassExports<JSExport, NSSecureCodingClassExports_>
@end
@protocol NSUnitInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly,copy) NSString * symbol;
JSExportAs(initWithSymbol,
-(id) jsinitWithSymbol: (NSString *) symbol );
@end
@protocol NSUnitClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
@end
@protocol NSDimensionInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@property (readonly,copy) NSUnitConverter * converter;
JSExportAs(initWithSymbolConverter,
-(id) jsinitWithSymbol: (NSString *) symbol converter: (NSUnitConverter *) converter );
@end
@protocol NSDimensionClassExports<JSExport, NSSecureCodingClassExports_>
+(id) baseUnit;
@end
@protocol NSUnitAccelerationInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitAccelerationClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitAcceleration *) metersPerSecondSquared;
+(NSUnitAcceleration *) gravity;
@end
@protocol NSUnitAngleInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitAngleClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitAngle *) degrees;
+(NSUnitAngle *) arcMinutes;
+(NSUnitAngle *) arcSeconds;
+(NSUnitAngle *) radians;
+(NSUnitAngle *) gradians;
+(NSUnitAngle *) revolutions;
@end
@protocol NSUnitAreaInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitAreaClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitArea *) squareMegameters;
+(NSUnitArea *) squareKilometers;
+(NSUnitArea *) squareMeters;
+(NSUnitArea *) squareCentimeters;
+(NSUnitArea *) squareMillimeters;
+(NSUnitArea *) squareMicrometers;
+(NSUnitArea *) squareNanometers;
+(NSUnitArea *) squareInches;
+(NSUnitArea *) squareFeet;
+(NSUnitArea *) squareYards;
+(NSUnitArea *) squareMiles;
+(NSUnitArea *) acres;
+(NSUnitArea *) ares;
+(NSUnitArea *) hectares;
@end
@protocol NSUnitConcentrationMassInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitConcentrationMassClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitConcentrationMass *) millimolesPerLiterWithGramsPerMole: (double) gramsPerMole ;
+(NSUnitConcentrationMass *) gramsPerLiter;
+(NSUnitConcentrationMass *) milligramsPerDeciliter;
@end
@protocol NSUnitDispersionInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitDispersionClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitDispersion *) partsPerMillion;
@end
@protocol NSUnitDurationInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitDurationClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitDuration *) hours;
+(NSUnitDuration *) minutes;
+(NSUnitDuration *) seconds;
+(NSUnitDuration *) milliseconds;
+(NSUnitDuration *) microseconds;
+(NSUnitDuration *) nanoseconds;
+(NSUnitDuration *) picoseconds;
@end
@protocol NSUnitElectricChargeInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitElectricChargeClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitElectricCharge *) coulombs;
+(NSUnitElectricCharge *) megaampereHours;
+(NSUnitElectricCharge *) kiloampereHours;
+(NSUnitElectricCharge *) ampereHours;
+(NSUnitElectricCharge *) milliampereHours;
+(NSUnitElectricCharge *) microampereHours;
@end
@protocol NSUnitElectricCurrentInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitElectricCurrentClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitElectricCurrent *) megaamperes;
+(NSUnitElectricCurrent *) kiloamperes;
+(NSUnitElectricCurrent *) amperes;
+(NSUnitElectricCurrent *) milliamperes;
+(NSUnitElectricCurrent *) microamperes;
@end
@protocol NSUnitElectricPotentialDifferenceInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitElectricPotentialDifferenceClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitElectricPotentialDifference *) megavolts;
+(NSUnitElectricPotentialDifference *) kilovolts;
+(NSUnitElectricPotentialDifference *) volts;
+(NSUnitElectricPotentialDifference *) millivolts;
+(NSUnitElectricPotentialDifference *) microvolts;
@end
@protocol NSUnitElectricResistanceInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitElectricResistanceClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitElectricResistance *) megaohms;
+(NSUnitElectricResistance *) kiloohms;
+(NSUnitElectricResistance *) ohms;
+(NSUnitElectricResistance *) milliohms;
+(NSUnitElectricResistance *) microohms;
@end
@protocol NSUnitEnergyInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitEnergyClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitEnergy *) kilojoules;
+(NSUnitEnergy *) joules;
+(NSUnitEnergy *) kilocalories;
+(NSUnitEnergy *) calories;
+(NSUnitEnergy *) kilowattHours;
@end
@protocol NSUnitFrequencyInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitFrequencyClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitFrequency *) terahertz;
+(NSUnitFrequency *) gigahertz;
+(NSUnitFrequency *) megahertz;
+(NSUnitFrequency *) kilohertz;
+(NSUnitFrequency *) hertz;
+(NSUnitFrequency *) millihertz;
+(NSUnitFrequency *) microhertz;
+(NSUnitFrequency *) nanohertz;
+(NSUnitFrequency *) framesPerSecond;
@end
@protocol NSUnitFuelEfficiencyInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitFuelEfficiencyClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitFuelEfficiency *) litersPer100Kilometers;
+(NSUnitFuelEfficiency *) milesPerImperialGallon;
+(NSUnitFuelEfficiency *) milesPerGallon;
@end
@protocol NSUnitInformationStorageInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitInformationStorageClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitInformationStorage *) bytes;
+(NSUnitInformationStorage *) bits;
+(NSUnitInformationStorage *) nibbles;
+(NSUnitInformationStorage *) yottabytes;
+(NSUnitInformationStorage *) zettabytes;
+(NSUnitInformationStorage *) exabytes;
+(NSUnitInformationStorage *) petabytes;
+(NSUnitInformationStorage *) terabytes;
+(NSUnitInformationStorage *) gigabytes;
+(NSUnitInformationStorage *) megabytes;
+(NSUnitInformationStorage *) kilobytes;
+(NSUnitInformationStorage *) yottabits;
+(NSUnitInformationStorage *) zettabits;
+(NSUnitInformationStorage *) exabits;
+(NSUnitInformationStorage *) petabits;
+(NSUnitInformationStorage *) terabits;
+(NSUnitInformationStorage *) gigabits;
+(NSUnitInformationStorage *) megabits;
+(NSUnitInformationStorage *) kilobits;
+(NSUnitInformationStorage *) yobibytes;
+(NSUnitInformationStorage *) zebibytes;
+(NSUnitInformationStorage *) exbibytes;
+(NSUnitInformationStorage *) pebibytes;
+(NSUnitInformationStorage *) tebibytes;
+(NSUnitInformationStorage *) gibibytes;
+(NSUnitInformationStorage *) mebibytes;
+(NSUnitInformationStorage *) kibibytes;
+(NSUnitInformationStorage *) yobibits;
+(NSUnitInformationStorage *) zebibits;
+(NSUnitInformationStorage *) exbibits;
+(NSUnitInformationStorage *) pebibits;
+(NSUnitInformationStorage *) tebibits;
+(NSUnitInformationStorage *) gibibits;
+(NSUnitInformationStorage *) mebibits;
+(NSUnitInformationStorage *) kibibits;
@end
@protocol NSUnitLengthInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitLengthClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitLength *) megameters;
+(NSUnitLength *) kilometers;
+(NSUnitLength *) hectometers;
+(NSUnitLength *) decameters;
+(NSUnitLength *) meters;
+(NSUnitLength *) decimeters;
+(NSUnitLength *) centimeters;
+(NSUnitLength *) millimeters;
+(NSUnitLength *) micrometers;
+(NSUnitLength *) nanometers;
+(NSUnitLength *) picometers;
+(NSUnitLength *) inches;
+(NSUnitLength *) feet;
+(NSUnitLength *) yards;
+(NSUnitLength *) miles;
+(NSUnitLength *) scandinavianMiles;
+(NSUnitLength *) lightyears;
+(NSUnitLength *) nauticalMiles;
+(NSUnitLength *) fathoms;
+(NSUnitLength *) furlongs;
+(NSUnitLength *) astronomicalUnits;
+(NSUnitLength *) parsecs;
@end
@protocol NSUnitIlluminanceInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitIlluminanceClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitIlluminance *) lux;
@end
@protocol NSUnitMassInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitMassClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitMass *) kilograms;
+(NSUnitMass *) grams;
+(NSUnitMass *) decigrams;
+(NSUnitMass *) centigrams;
+(NSUnitMass *) milligrams;
+(NSUnitMass *) micrograms;
+(NSUnitMass *) nanograms;
+(NSUnitMass *) picograms;
+(NSUnitMass *) ounces;
+(NSUnitMass *) poundsMass;
+(NSUnitMass *) stones;
+(NSUnitMass *) metricTons;
+(NSUnitMass *) shortTons;
+(NSUnitMass *) carats;
+(NSUnitMass *) ouncesTroy;
+(NSUnitMass *) slugs;
@end
@protocol NSUnitPowerInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitPowerClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitPower *) terawatts;
+(NSUnitPower *) gigawatts;
+(NSUnitPower *) megawatts;
+(NSUnitPower *) kilowatts;
+(NSUnitPower *) watts;
+(NSUnitPower *) milliwatts;
+(NSUnitPower *) microwatts;
+(NSUnitPower *) nanowatts;
+(NSUnitPower *) picowatts;
+(NSUnitPower *) femtowatts;
+(NSUnitPower *) horsepower;
@end
@protocol NSUnitPressureInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitPressureClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitPressure *) newtonsPerMetersSquared;
+(NSUnitPressure *) gigapascals;
+(NSUnitPressure *) megapascals;
+(NSUnitPressure *) kilopascals;
+(NSUnitPressure *) hectopascals;
+(NSUnitPressure *) inchesOfMercury;
+(NSUnitPressure *) bars;
+(NSUnitPressure *) millibars;
+(NSUnitPressure *) millimetersOfMercury;
+(NSUnitPressure *) poundsForcePerSquareInch;
@end
@protocol NSUnitSpeedInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitSpeedClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitSpeed *) metersPerSecond;
+(NSUnitSpeed *) kilometersPerHour;
+(NSUnitSpeed *) milesPerHour;
+(NSUnitSpeed *) knots;
@end
@protocol NSUnitTemperatureInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitTemperatureClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitTemperature *) kelvin;
+(NSUnitTemperature *) celsius;
+(NSUnitTemperature *) fahrenheit;
@end
@protocol NSUnitVolumeInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitVolumeClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitVolume *) megaliters;
+(NSUnitVolume *) kiloliters;
+(NSUnitVolume *) liters;
+(NSUnitVolume *) deciliters;
+(NSUnitVolume *) centiliters;
+(NSUnitVolume *) milliliters;
+(NSUnitVolume *) cubicKilometers;
+(NSUnitVolume *) cubicMeters;
+(NSUnitVolume *) cubicDecimeters;
+(NSUnitVolume *) cubicCentimeters;
+(NSUnitVolume *) cubicMillimeters;
+(NSUnitVolume *) cubicInches;
+(NSUnitVolume *) cubicFeet;
+(NSUnitVolume *) cubicYards;
+(NSUnitVolume *) cubicMiles;
+(NSUnitVolume *) acreFeet;
+(NSUnitVolume *) bushels;
+(NSUnitVolume *) teaspoons;
+(NSUnitVolume *) tablespoons;
+(NSUnitVolume *) fluidOunces;
+(NSUnitVolume *) cups;
+(NSUnitVolume *) pints;
+(NSUnitVolume *) quarts;
+(NSUnitVolume *) gallons;
+(NSUnitVolume *) imperialTeaspoons;
+(NSUnitVolume *) imperialTablespoons;
+(NSUnitVolume *) imperialFluidOunces;
+(NSUnitVolume *) imperialPints;
+(NSUnitVolume *) imperialQuarts;
+(NSUnitVolume *) imperialGallons;
+(NSUnitVolume *) metricCups;
@end
#pragma clang diagnostic pop