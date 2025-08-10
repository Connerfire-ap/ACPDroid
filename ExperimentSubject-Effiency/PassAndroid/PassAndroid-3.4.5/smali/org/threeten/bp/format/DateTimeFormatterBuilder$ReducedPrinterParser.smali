.class final Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;
.super Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReducedPrinterParser"
.end annotation


# static fields
.field static final BASE_DATE:Lorg/threeten/bp/LocalDate;


# instance fields
.field private final baseDate:Lorg/threeten/bp/chrono/ChronoLocalDate;

.field private final baseValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2546
    const/16 v0, 0x7d0

    invoke-static {v0, v1, v1}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->BASE_DATE:Lorg/threeten/bp/LocalDate;

    return-void
.end method

.method constructor <init>(Lorg/threeten/bp/temporal/TemporalField;IIILorg/threeten/bp/chrono/ChronoLocalDate;)V
    .locals 4
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "width"    # I
    .param p3, "maxWidth"    # I
    .param p4, "baseValue"    # I
    .param p5, "baseDate"    # Lorg/threeten/bp/chrono/ChronoLocalDate;

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x1

    .line 2560
    sget-object v0, Lorg/threeten/bp/format/SignStyle;->NOT_NEGATIVE:Lorg/threeten/bp/format/SignStyle;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/format/SignStyle;)V

    .line 2561
    if-lt p2, v1, :cond_0

    if-le p2, v2, :cond_1

    .line 2562
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The width must be from 1 to 10 inclusive but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2564
    :cond_1
    if-lt p3, v1, :cond_2

    if-le p3, v2, :cond_3

    .line 2565
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The maxWidth must be from 1 to 10 inclusive but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2567
    :cond_3
    if-ge p3, p2, :cond_4

    .line 2568
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The maxWidth must be greater than the width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2570
    :cond_4
    if-nez p5, :cond_6

    .line 2571
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/ValueRange;->isValidValue(J)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2572
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The base value must be within the range of the field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2574
    :cond_5
    int-to-long v0, p4

    sget-object v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->EXCEED_POINTS:[I

    aget v2, v2, p2

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    .line 2575
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    const-string v1, "Unable to add printer-parser as the range exceeds the capacity of an int"

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2578
    :cond_6
    iput p4, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    .line 2579
    iput-object p5, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Lorg/threeten/bp/chrono/ChronoLocalDate;

    .line 2580
    return-void
.end method

.method private constructor <init>(Lorg/threeten/bp/temporal/TemporalField;IIILorg/threeten/bp/chrono/ChronoLocalDate;I)V
    .locals 7
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "baseValue"    # I
    .param p5, "baseDate"    # Lorg/threeten/bp/chrono/ChronoLocalDate;
    .param p6, "subsequentWidth"    # I

    .prologue
    .line 2584
    sget-object v4, Lorg/threeten/bp/format/SignStyle;->NOT_NEGATIVE:Lorg/threeten/bp/format/SignStyle;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/format/SignStyle;ILorg/threeten/bp/format/DateTimeFormatterBuilder$1;)V

    .line 2585
    iput p4, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    .line 2586
    iput-object p5, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Lorg/threeten/bp/chrono/ChronoLocalDate;

    .line 2587
    return-void
.end method


# virtual methods
.method getValue(Lorg/threeten/bp/format/DateTimePrintContext;J)J
    .locals 6
    .param p1, "context"    # Lorg/threeten/bp/format/DateTimePrintContext;
    .param p2, "value"    # J

    .prologue
    .line 2591
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 2592
    .local v0, "absValue":J
    iget v2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    .line 2593
    .local v2, "baseValue":I
    iget-object v4, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Lorg/threeten/bp/chrono/ChronoLocalDate;

    if-eqz v4, :cond_0

    .line 2594
    invoke-virtual {p1}, Lorg/threeten/bp/format/DateTimePrintContext;->getTemporal()Lorg/threeten/bp/temporal/TemporalAccessor;

    move-result-object v4

    invoke-static {v4}, Lorg/threeten/bp/chrono/Chronology;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/Chronology;

    move-result-object v3

    .line 2595
    .local v3, "chrono":Lorg/threeten/bp/chrono/Chronology;
    iget-object v4, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Lorg/threeten/bp/chrono/ChronoLocalDate;

    invoke-virtual {v3, v4}, Lorg/threeten/bp/chrono/Chronology;->date(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v4

    iget-object v5, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Lorg/threeten/bp/temporal/TemporalField;

    invoke-virtual {v4, v5}, Lorg/threeten/bp/chrono/ChronoLocalDate;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v2

    .line 2597
    .end local v3    # "chrono":Lorg/threeten/bp/chrono/Chronology;
    :cond_0
    int-to-long v4, v2

    cmp-long v4, p2, v4

    if-ltz v4, :cond_1

    sget-object v4, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->EXCEED_POINTS:[I

    iget v5, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    aget v4, v4, v5

    add-int/2addr v4, v2

    int-to-long v4, v4

    cmp-long v4, p2, v4

    if-gez v4, :cond_1

    .line 2598
    sget-object v4, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->EXCEED_POINTS:[I

    iget v5, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    aget v4, v4, v5

    int-to-long v4, v4

    rem-long v4, v0, v4

    .line 2600
    :goto_0
    return-wide v4

    :cond_1
    sget-object v4, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->EXCEED_POINTS:[I

    iget v5, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->maxWidth:I

    aget v4, v4, v5

    int-to-long v4, v4

    rem-long v4, v0, v4

    goto :goto_0
.end method

.method isFixedWidth(Lorg/threeten/bp/format/DateTimeParseContext;)Z
    .locals 1
    .param p1, "context"    # Lorg/threeten/bp/format/DateTimeParseContext;

    .prologue
    .line 2644
    invoke-virtual {p1}, Lorg/threeten/bp/format/DateTimeParseContext;->isStrict()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2645
    const/4 v0, 0x0

    .line 2647
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->isFixedWidth(Lorg/threeten/bp/format/DateTimeParseContext;)Z

    move-result v0

    goto :goto_0
.end method

.method setValue(Lorg/threeten/bp/format/DateTimeParseContext;JII)I
    .locals 18
    .param p1, "context"    # Lorg/threeten/bp/format/DateTimeParseContext;
    .param p2, "value"    # J
    .param p4, "errorPos"    # I
    .param p5, "successPos"    # I

    .prologue
    .line 2605
    move-object/from16 v0, p0

    iget v10, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    .line 2606
    .local v10, "baseValue":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Lorg/threeten/bp/chrono/ChronoLocalDate;

    if-eqz v2, :cond_0

    .line 2607
    invoke-virtual/range {p1 .. p1}, Lorg/threeten/bp/format/DateTimeParseContext;->getEffectiveChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v11

    .line 2608
    .local v11, "chrono":Lorg/threeten/bp/chrono/Chronology;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Lorg/threeten/bp/chrono/ChronoLocalDate;

    invoke-virtual {v11, v2}, Lorg/threeten/bp/chrono/Chronology;->date(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Lorg/threeten/bp/temporal/TemporalField;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/chrono/ChronoLocalDate;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v10

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    .line 2609
    invoke-virtual/range {v2 .. v7}, Lorg/threeten/bp/format/DateTimeParseContext;->addChronologyChangedParser(Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;JII)V

    .line 2611
    .end local v11    # "chrono":Lorg/threeten/bp/chrono/Chronology;
    :cond_0
    sub-int v14, p5, p4

    .line 2612
    .local v14, "parseLen":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    if-ne v14, v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-ltz v2, :cond_1

    .line 2613
    sget-object v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->EXCEED_POINTS:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    aget v2, v2, v3

    int-to-long v0, v2

    move-wide/from16 v16, v0

    .line 2614
    .local v16, "range":J
    int-to-long v2, v10

    rem-long v12, v2, v16

    .line 2615
    .local v12, "lastPart":J
    int-to-long v2, v10

    sub-long v8, v2, v12

    .line 2616
    .local v8, "basePart":J
    if-lez v10, :cond_2

    .line 2617
    add-long p2, p2, v8

    .line 2621
    :goto_0
    int-to-long v2, v10

    cmp-long v2, p2, v2

    if-gez v2, :cond_1

    .line 2622
    add-long p2, p2, v16

    .line 2625
    .end local v8    # "basePart":J
    .end local v12    # "lastPart":J
    .end local v16    # "range":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Lorg/threeten/bp/temporal/TemporalField;

    move-object/from16 v2, p1

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lorg/threeten/bp/format/DateTimeParseContext;->setParsedField(Lorg/threeten/bp/temporal/TemporalField;JII)I

    move-result v2

    return v2

    .line 2619
    .restart local v8    # "basePart":J
    .restart local v12    # "lastPart":J
    .restart local v16    # "range":J
    :cond_2
    sub-long p2, v8, p2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReducedValue("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Lorg/threeten/bp/temporal/TemporalField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->maxWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Lorg/threeten/bp/chrono/ChronoLocalDate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Lorg/threeten/bp/chrono/ChronoLocalDate;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method withFixedWidth()Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 2630
    iget v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->subsequentWidth:I

    if-ne v0, v6, :cond_0

    .line 2633
    .end local p0    # "this":Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    :cond_0
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Lorg/threeten/bp/temporal/TemporalField;

    iget v2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    iget v3, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->maxWidth:I

    iget v4, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    iget-object v5, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Lorg/threeten/bp/chrono/ChronoLocalDate;

    invoke-direct/range {v0 .. v6}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Lorg/threeten/bp/temporal/TemporalField;IIILorg/threeten/bp/chrono/ChronoLocalDate;I)V

    move-object p0, v0

    goto :goto_0
.end method

.method bridge synthetic withSubsequentWidth(I)Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 2545
    invoke-virtual {p0, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->withSubsequentWidth(I)Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    move-result-object v0

    return-object v0
.end method

.method withSubsequentWidth(I)Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    .locals 7
    .param p1, "subsequentWidth"    # I

    .prologue
    .line 2638
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Lorg/threeten/bp/temporal/TemporalField;

    iget v2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    iget v3, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->maxWidth:I

    iget v4, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    iget-object v5, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Lorg/threeten/bp/chrono/ChronoLocalDate;

    iget v6, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;->subsequentWidth:I

    add-int/2addr v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Lorg/threeten/bp/temporal/TemporalField;IIILorg/threeten/bp/chrono/ChronoLocalDate;I)V

    return-object v0
.end method
