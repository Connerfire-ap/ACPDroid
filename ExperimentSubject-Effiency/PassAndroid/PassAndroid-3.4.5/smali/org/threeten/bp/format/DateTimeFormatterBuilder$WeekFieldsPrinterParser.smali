.class final Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeekFieldsPrinterParser"
.end annotation


# instance fields
.field private final count:I

.field private final letter:C


# direct methods
.method public constructor <init>(CI)V
    .locals 0
    .param p1, "letter"    # C
    .param p2, "count"    # I

    .prologue
    .line 3787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3788
    iput-char p1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;->letter:C

    .line 3789
    iput p2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;->count:I

    .line 3790
    return-void
.end method

.method private evaluate(Lorg/threeten/bp/temporal/WeekFields;)Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    .locals 7
    .param p1, "weekFields"    # Lorg/threeten/bp/temporal/WeekFields;

    .prologue
    const/4 v2, 0x2

    .line 3807
    const/4 v0, 0x0

    .line 3808
    .local v0, "pp":Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    iget-char v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;->letter:C

    sparse-switch v1, :sswitch_data_0

    .line 3830
    :goto_0
    return-object v0

    .line 3810
    :sswitch_0
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

    .end local v0    # "pp":Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    invoke-virtual {p1}, Lorg/threeten/bp/temporal/WeekFields;->dayOfWeek()Lorg/threeten/bp/temporal/TemporalField;

    move-result-object v1

    iget v3, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;->count:I

    sget-object v4, Lorg/threeten/bp/format/SignStyle;->NOT_NEGATIVE:Lorg/threeten/bp/format/SignStyle;

    invoke-direct {v0, v1, v3, v2, v4}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/format/SignStyle;)V

    .line 3811
    .restart local v0    # "pp":Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    goto :goto_0

    .line 3813
    :sswitch_1
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

    .end local v0    # "pp":Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    invoke-virtual {p1}, Lorg/threeten/bp/temporal/WeekFields;->dayOfWeek()Lorg/threeten/bp/temporal/TemporalField;

    move-result-object v1

    iget v3, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;->count:I

    sget-object v4, Lorg/threeten/bp/format/SignStyle;->NOT_NEGATIVE:Lorg/threeten/bp/format/SignStyle;

    invoke-direct {v0, v1, v3, v2, v4}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/format/SignStyle;)V

    .line 3814
    .restart local v0    # "pp":Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    goto :goto_0

    .line 3816
    :sswitch_2
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

    .end local v0    # "pp":Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    invoke-virtual {p1}, Lorg/threeten/bp/temporal/WeekFields;->weekOfWeekBasedYear()Lorg/threeten/bp/temporal/TemporalField;

    move-result-object v1

    iget v3, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;->count:I

    sget-object v4, Lorg/threeten/bp/format/SignStyle;->NOT_NEGATIVE:Lorg/threeten/bp/format/SignStyle;

    invoke-direct {v0, v1, v3, v2, v4}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/format/SignStyle;)V

    .line 3817
    .restart local v0    # "pp":Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    goto :goto_0

    .line 3819
    :sswitch_3
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

    .end local v0    # "pp":Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    invoke-virtual {p1}, Lorg/threeten/bp/temporal/WeekFields;->weekOfMonth()Lorg/threeten/bp/temporal/TemporalField;

    move-result-object v1

    const/4 v3, 0x1

    sget-object v4, Lorg/threeten/bp/format/SignStyle;->NOT_NEGATIVE:Lorg/threeten/bp/format/SignStyle;

    invoke-direct {v0, v1, v3, v2, v4}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/format/SignStyle;)V

    .line 3820
    .restart local v0    # "pp":Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    goto :goto_0

    .line 3822
    :sswitch_4
    iget v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;->count:I

    if-ne v1, v2, :cond_0

    .line 3823
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    .end local v0    # "pp":Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    invoke-virtual {p1}, Lorg/threeten/bp/temporal/WeekFields;->weekBasedYear()Lorg/threeten/bp/temporal/TemporalField;

    move-result-object v1

    const/4 v4, 0x0

    sget-object v5, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->BASE_DATE:Lorg/threeten/bp/LocalDate;

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Lorg/threeten/bp/temporal/TemporalField;IIILorg/threeten/bp/chrono/ChronoLocalDate;)V

    .restart local v0    # "pp":Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    goto :goto_0

    .line 3825
    :cond_0
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

    .end local v0    # "pp":Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    invoke-virtual {p1}, Lorg/threeten/bp/temporal/WeekFields;->weekBasedYear()Lorg/threeten/bp/temporal/TemporalField;

    move-result-object v1

    iget v2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;->count:I

    const/16 v3, 0x13

    iget v4, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;->count:I

    const/4 v5, 0x4

    if-ge v4, v5, :cond_1

    sget-object v4, Lorg/threeten/bp/format/SignStyle;->NORMAL:Lorg/threeten/bp/format/SignStyle;

    :goto_1
    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/format/SignStyle;ILorg/threeten/bp/format/DateTimeFormatterBuilder$1;)V

    .restart local v0    # "pp":Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    goto :goto_0

    .end local v0    # "pp":Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    :cond_1
    sget-object v4, Lorg/threeten/bp/format/SignStyle;->EXCEEDS_PAD:Lorg/threeten/bp/format/SignStyle;

    goto :goto_1

    .line 3808
    nop

    :sswitch_data_0
    .sparse-switch
        0x57 -> :sswitch_3
        0x59 -> :sswitch_4
        0x63 -> :sswitch_1
        0x65 -> :sswitch_0
        0x77 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public parse(Lorg/threeten/bp/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 3
    .param p1, "context"    # Lorg/threeten/bp/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .prologue
    .line 3801
    invoke-virtual {p1}, Lorg/threeten/bp/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Lorg/threeten/bp/temporal/WeekFields;->of(Ljava/util/Locale;)Lorg/threeten/bp/temporal/WeekFields;

    move-result-object v1

    .line 3802
    .local v1, "weekFields":Lorg/threeten/bp/temporal/WeekFields;
    invoke-direct {p0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;->evaluate(Lorg/threeten/bp/temporal/WeekFields;)Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    move-result-object v0

    .line 3803
    .local v0, "pp":Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    invoke-interface {v0, p1, p2, p3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;->parse(Lorg/threeten/bp/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v2

    return v2
.end method

.method public print(Lorg/threeten/bp/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 3
    .param p1, "context"    # Lorg/threeten/bp/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    .line 3794
    invoke-virtual {p1}, Lorg/threeten/bp/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Lorg/threeten/bp/temporal/WeekFields;->of(Ljava/util/Locale;)Lorg/threeten/bp/temporal/WeekFields;

    move-result-object v1

    .line 3795
    .local v1, "weekFields":Lorg/threeten/bp/temporal/WeekFields;
    invoke-direct {p0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;->evaluate(Lorg/threeten/bp/temporal/WeekFields;)Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    move-result-object v0

    .line 3796
    .local v0, "pp":Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    invoke-interface {v0, p1, p2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;->print(Lorg/threeten/bp/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    move-result v2

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3835
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3836
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Localized("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3837
    iget-char v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;->letter:C

    const/16 v2, 0x59

    if-ne v1, v2, :cond_3

    .line 3838
    iget v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;->count:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3839
    const-string v1, "WeekBasedYear"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3858
    :goto_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3859
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3840
    :cond_0
    iget v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;->count:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 3841
    const-string v1, "ReducedValue(WeekBasedYear,2,2,2000-01-01)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3843
    :cond_1
    const-string v1, "WeekBasedYear,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;->count:I

    const/4 v3, 0x4

    if-ge v1, v3, :cond_2

    sget-object v1, Lorg/threeten/bp/format/SignStyle;->NORMAL:Lorg/threeten/bp/format/SignStyle;

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    sget-object v1, Lorg/threeten/bp/format/SignStyle;->EXCEEDS_PAD:Lorg/threeten/bp/format/SignStyle;

    goto :goto_1

    .line 3848
    :cond_3
    iget-char v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;->letter:C

    const/16 v2, 0x63

    if-eq v1, v2, :cond_4

    iget-char v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;->letter:C

    const/16 v2, 0x65

    if-ne v1, v2, :cond_6

    .line 3849
    :cond_4
    const-string v1, "DayOfWeek"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3855
    :cond_5
    :goto_2
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3856
    iget v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3850
    :cond_6
    iget-char v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;->letter:C

    const/16 v2, 0x77

    if-ne v1, v2, :cond_7

    .line 3851
    const-string v1, "WeekOfWeekBasedYear"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3852
    :cond_7
    iget-char v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;->letter:C

    const/16 v2, 0x57

    if-ne v1, v2, :cond_5

    .line 3853
    const-string v1, "WeekOfMonth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
