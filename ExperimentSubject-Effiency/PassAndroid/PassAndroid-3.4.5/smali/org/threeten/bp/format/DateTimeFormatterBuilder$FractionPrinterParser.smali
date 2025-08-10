.class final Lorg/threeten/bp/format/DateTimeFormatterBuilder$FractionPrinterParser;
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
    name = "FractionPrinterParser"
.end annotation


# instance fields
.field private final decimalPoint:Z

.field private final field:Lorg/threeten/bp/temporal/TemporalField;

.field private final maxWidth:I

.field private final minWidth:I


# direct methods
.method constructor <init>(Lorg/threeten/bp/temporal/TemporalField;IIZ)V
    .locals 3
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "decimalPoint"    # Z

    .prologue
    const/16 v1, 0x9

    .line 2674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2675
    const-string v0, "field"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2676
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ValueRange;->isFixed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2677
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field must have a fixed set of values: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2679
    :cond_0
    if-ltz p2, :cond_1

    if-le p2, v1, :cond_2

    .line 2680
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Minimum width must be from 0 to 9 inclusive but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2682
    :cond_2
    const/4 v0, 0x1

    if-lt p3, v0, :cond_3

    if-le p3, v1, :cond_4

    .line 2683
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum width must be from 1 to 9 inclusive but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2685
    :cond_4
    if-ge p3, p2, :cond_5

    .line 2686
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum width must exceed or equal the minimum width but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2689
    :cond_5
    iput-object p1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Lorg/threeten/bp/temporal/TemporalField;

    .line 2690
    iput p2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    .line 2691
    iput p3, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    .line 2692
    iput-boolean p4, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    .line 2693
    return-void
.end method

.method private convertFromFraction(Ljava/math/BigDecimal;)J
    .locals 7
    .param p1, "fraction"    # Ljava/math/BigDecimal;

    .prologue
    .line 2809
    iget-object v4, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Lorg/threeten/bp/temporal/TemporalField;

    invoke-interface {v4}, Lorg/threeten/bp/temporal/TemporalField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v1

    .line 2810
    .local v1, "range":Lorg/threeten/bp/temporal/ValueRange;
    invoke-virtual {v1}, Lorg/threeten/bp/temporal/ValueRange;->getMinimum()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    .line 2811
    .local v0, "minBD":Ljava/math/BigDecimal;
    invoke-virtual {v1}, Lorg/threeten/bp/temporal/ValueRange;->getMaximum()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    sget-object v5, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 2812
    .local v2, "rangeBD":Ljava/math/BigDecimal;
    invoke-virtual {p1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v4, v5, v6}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 2813
    .local v3, "valueBD":Ljava/math/BigDecimal;
    invoke-virtual {v3}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v4

    return-wide v4
.end method

.method private convertToFraction(J)Ljava/math/BigDecimal;
    .locals 9
    .param p1, "value"    # J

    .prologue
    .line 2782
    iget-object v5, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Lorg/threeten/bp/temporal/TemporalField;

    invoke-interface {v5}, Lorg/threeten/bp/temporal/TemporalField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v2

    .line 2783
    .local v2, "range":Lorg/threeten/bp/temporal/ValueRange;
    iget-object v5, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Lorg/threeten/bp/temporal/TemporalField;

    invoke-virtual {v2, p1, p2, v5}, Lorg/threeten/bp/temporal/ValueRange;->checkValidValue(JLorg/threeten/bp/temporal/TemporalField;)J

    .line 2784
    invoke-virtual {v2}, Lorg/threeten/bp/temporal/ValueRange;->getMinimum()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    .line 2785
    .local v1, "minBD":Ljava/math/BigDecimal;
    invoke-virtual {v2}, Lorg/threeten/bp/temporal/ValueRange;->getMaximum()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v5

    sget-object v6, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v5, v6}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 2786
    .local v3, "rangeBD":Ljava/math/BigDecimal;
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 2787
    .local v4, "valueBD":Ljava/math/BigDecimal;
    const/16 v5, 0x9

    sget-object v6, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v4, v3, v5, v6}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 2789
    .local v0, "fraction":Ljava/math/BigDecimal;
    sget-object v5, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v5}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    :goto_0
    return-object v5

    :cond_0
    invoke-virtual {v0}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v5

    goto :goto_0
.end method


# virtual methods
.method public parse(Lorg/threeten/bp/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 18
    .param p1, "context"    # Lorg/threeten/bp/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .prologue
    .line 2727
    invoke-virtual/range {p1 .. p1}, Lorg/threeten/bp/format/DateTimeParseContext;->isStrict()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v11, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    .line 2728
    .local v11, "effectiveMin":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/threeten/bp/format/DateTimeParseContext;->isStrict()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget v10, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    .line 2729
    .local v10, "effectiveMax":I
    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v13

    .line 2730
    .local v13, "length":I
    move/from16 v0, p3

    if-ne v0, v13, :cond_3

    .line 2732
    if-lez v11, :cond_2

    xor-int/lit8 v2, p3, -0x1

    .line 2762
    :goto_2
    return v2

    .line 2727
    .end local v10    # "effectiveMax":I
    .end local v11    # "effectiveMin":I
    .end local v13    # "length":I
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 2728
    .restart local v11    # "effectiveMin":I
    :cond_1
    const/16 v10, 0x9

    goto :goto_1

    .restart local v10    # "effectiveMax":I
    .restart local v13    # "length":I
    :cond_2
    move/from16 v2, p3

    .line 2732
    goto :goto_2

    .line 2734
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    if-eqz v2, :cond_6

    .line 2735
    invoke-interface/range {p2 .. p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lorg/threeten/bp/format/DateTimeParseContext;->getSymbols()Lorg/threeten/bp/format/DecimalStyle;

    move-result-object v3

    invoke-virtual {v3}, Lorg/threeten/bp/format/DecimalStyle;->getDecimalSeparator()C

    move-result v3

    if-eq v2, v3, :cond_5

    .line 2737
    if-lez v11, :cond_4

    xor-int/lit8 v2, p3, -0x1

    goto :goto_2

    :cond_4
    move/from16 v2, p3

    goto :goto_2

    .line 2739
    :cond_5
    add-int/lit8 p3, p3, 0x1

    .line 2741
    :cond_6
    add-int v15, p3, v11

    .line 2742
    .local v15, "minEndPos":I
    if-le v15, v13, :cond_7

    .line 2743
    xor-int/lit8 v2, p3, -0x1

    goto :goto_2

    .line 2745
    :cond_7
    add-int v2, p3, v10

    invoke-static {v2, v13}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 2746
    .local v14, "maxEndPos":I
    const/16 v17, 0x0

    .line 2747
    .local v17, "total":I
    move/from16 v7, p3

    .local v7, "pos":I
    move/from16 v16, v7

    .line 2748
    .end local v7    # "pos":I
    .local v16, "pos":I
    :goto_3
    move/from16 v0, v16

    if-ge v0, v14, :cond_a

    .line 2749
    add-int/lit8 v7, v16, 0x1

    .end local v16    # "pos":I
    .restart local v7    # "pos":I
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    .line 2750
    .local v8, "ch":C
    invoke-virtual/range {p1 .. p1}, Lorg/threeten/bp/format/DateTimeParseContext;->getSymbols()Lorg/threeten/bp/format/DecimalStyle;

    move-result-object v2

    invoke-virtual {v2, v8}, Lorg/threeten/bp/format/DecimalStyle;->convertToDigit(C)I

    move-result v9

    .line 2751
    .local v9, "digit":I
    if-gez v9, :cond_9

    .line 2752
    if-ge v7, v15, :cond_8

    .line 2753
    xor-int/lit8 v2, p3, -0x1

    goto :goto_2

    .line 2755
    :cond_8
    add-int/lit8 v7, v7, -0x1

    .line 2760
    .end local v8    # "ch":C
    .end local v9    # "digit":I
    :goto_4
    new-instance v2, Ljava/math/BigDecimal;

    move/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/math/BigDecimal;-><init>(I)V

    sub-int v3, v7, p3

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->movePointLeft(I)Ljava/math/BigDecimal;

    move-result-object v12

    .line 2761
    .local v12, "fraction":Ljava/math/BigDecimal;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$FractionPrinterParser;->convertFromFraction(Ljava/math/BigDecimal;)J

    move-result-wide v4

    .line 2762
    .local v4, "value":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Lorg/threeten/bp/temporal/TemporalField;

    move-object/from16 v2, p1

    move/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Lorg/threeten/bp/format/DateTimeParseContext;->setParsedField(Lorg/threeten/bp/temporal/TemporalField;JII)I

    move-result v2

    goto :goto_2

    .line 2758
    .end local v4    # "value":J
    .end local v12    # "fraction":Ljava/math/BigDecimal;
    .restart local v8    # "ch":C
    .restart local v9    # "digit":I
    :cond_9
    mul-int/lit8 v2, v17, 0xa

    add-int v17, v2, v9

    move/from16 v16, v7

    .line 2759
    .end local v7    # "pos":I
    .restart local v16    # "pos":I
    goto :goto_3

    .end local v8    # "ch":C
    .end local v9    # "digit":I
    :cond_a
    move/from16 v7, v16

    .end local v16    # "pos":I
    .restart local v7    # "pos":I
    goto :goto_4
.end method

.method public print(Lorg/threeten/bp/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 8
    .param p1, "context"    # Lorg/threeten/bp/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    .line 2697
    iget-object v6, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Lorg/threeten/bp/temporal/TemporalField;

    invoke-virtual {p1, v6}, Lorg/threeten/bp/format/DateTimePrintContext;->getValue(Lorg/threeten/bp/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v5

    .line 2698
    .local v5, "value":Ljava/lang/Long;
    if-nez v5, :cond_0

    .line 2699
    const/4 v6, 0x0

    .line 2722
    :goto_0
    return v6

    .line 2701
    :cond_0
    invoke-virtual {p1}, Lorg/threeten/bp/format/DateTimePrintContext;->getSymbols()Lorg/threeten/bp/format/DecimalStyle;

    move-result-object v4

    .line 2702
    .local v4, "symbols":Lorg/threeten/bp/format/DecimalStyle;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$FractionPrinterParser;->convertToFraction(J)Ljava/math/BigDecimal;

    move-result-object v0

    .line 2703
    .local v0, "fraction":Ljava/math/BigDecimal;
    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v6

    if-nez v6, :cond_2

    .line 2704
    iget v6, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    if-lez v6, :cond_4

    .line 2705
    iget-boolean v6, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    if-eqz v6, :cond_1

    .line 2706
    invoke-virtual {v4}, Lorg/threeten/bp/format/DecimalStyle;->getDecimalSeparator()C

    move-result v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2708
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v6, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    if-ge v1, v6, :cond_4

    .line 2709
    invoke-virtual {v4}, Lorg/threeten/bp/format/DecimalStyle;->getZeroDigit()C

    move-result v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2708
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2713
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v6

    iget v7, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v7, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2714
    .local v2, "outputScale":I
    sget-object v6, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v0, v2, v6}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 2715
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 2716
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {v4, v3}, Lorg/threeten/bp/format/DecimalStyle;->convertNumberToI18N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2717
    iget-boolean v6, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    if-eqz v6, :cond_3

    .line 2718
    invoke-virtual {v4}, Lorg/threeten/bp/format/DecimalStyle;->getDecimalSeparator()C

    move-result v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2720
    :cond_3
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2722
    .end local v2    # "outputScale":I
    .end local v3    # "str":Ljava/lang/String;
    :cond_4
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2818
    iget-boolean v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    if-eqz v1, :cond_0

    const-string v0, ",DecimalPoint"

    .line 2819
    .local v0, "decimal":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fraction("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Lorg/threeten/bp/temporal/TemporalField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2818
    .end local v0    # "decimal":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
