.class Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NumberPrinterParser"
.end annotation


# static fields
.field static final EXCEED_POINTS:[I


# instance fields
.field final field:Lorg/threeten/bp/temporal/TemporalField;

.field final maxWidth:I

.field final minWidth:I

.field final signStyle:Lorg/threeten/bp/format/SignStyle;

.field final subsequentWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2274
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->EXCEED_POINTS:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data
.end method

.method constructor <init>(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/format/SignStyle;)V
    .locals 1
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "signStyle"    # Lorg/threeten/bp/format/SignStyle;

    .prologue
    .line 2301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2303
    iput-object p1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lorg/threeten/bp/temporal/TemporalField;

    .line 2304
    iput p2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    .line 2305
    iput p3, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    .line 2306
    iput-object p4, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lorg/threeten/bp/format/SignStyle;

    .line 2307
    const/4 v0, 0x0

    iput v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    .line 2308
    return-void
.end method

.method private constructor <init>(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/format/SignStyle;I)V
    .locals 0
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "signStyle"    # Lorg/threeten/bp/format/SignStyle;
    .param p5, "subsequentWidth"    # I

    .prologue
    .line 2320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2322
    iput-object p1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lorg/threeten/bp/temporal/TemporalField;

    .line 2323
    iput p2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    .line 2324
    iput p3, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    .line 2325
    iput-object p4, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lorg/threeten/bp/format/SignStyle;

    .line 2326
    iput p5, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    .line 2327
    return-void
.end method

.method synthetic constructor <init>(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/format/SignStyle;ILorg/threeten/bp/format/DateTimeFormatterBuilder$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lorg/threeten/bp/format/SignStyle;
    .param p5, "x4"    # I
    .param p6, "x5"    # Lorg/threeten/bp/format/DateTimeFormatterBuilder$1;

    .prologue
    .line 2269
    invoke-direct/range {p0 .. p5}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/format/SignStyle;I)V

    return-void
.end method


# virtual methods
.method getValue(Lorg/threeten/bp/format/DateTimePrintContext;J)J
    .locals 0
    .param p1, "context"    # Lorg/threeten/bp/format/DateTimePrintContext;
    .param p2, "value"    # J

    .prologue
    .line 2406
    return-wide p2
.end method

.method isFixedWidth(Lorg/threeten/bp/format/DateTimeParseContext;)Z
    .locals 2
    .param p1, "context"    # Lorg/threeten/bp/format/DateTimeParseContext;

    .prologue
    .line 2410
    iget v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    if-lez v0, :cond_1

    iget v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lorg/threeten/bp/format/SignStyle;

    sget-object v1, Lorg/threeten/bp/format/SignStyle;->NOT_NEGATIVE:Lorg/threeten/bp/format/SignStyle;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse(Lorg/threeten/bp/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 24
    .param p1, "context"    # Lorg/threeten/bp/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .prologue
    .line 2416
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v12

    .line 2417
    .local v12, "length":I
    move/from16 v0, p3

    if-ne v0, v12, :cond_0

    .line 2418
    xor-int/lit8 v2, p3, -0x1

    .line 2513
    :goto_0
    return v2

    .line 2420
    :cond_0
    invoke-interface/range {p2 .. p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v20

    .line 2421
    .local v20, "sign":C
    const/4 v15, 0x0

    .line 2422
    .local v15, "negative":Z
    const/16 v19, 0x0

    .line 2423
    .local v19, "positive":Z
    invoke-virtual/range {p1 .. p1}, Lorg/threeten/bp/format/DateTimeParseContext;->getSymbols()Lorg/threeten/bp/format/DecimalStyle;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/format/DecimalStyle;->getPositiveSign()C

    move-result v2

    move/from16 v0, v20

    if-ne v0, v2, :cond_5

    .line 2424
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lorg/threeten/bp/format/SignStyle;

    const/4 v6, 0x1

    invoke-virtual/range {p1 .. p1}, Lorg/threeten/bp/format/DateTimeParseContext;->isStrict()Z

    move-result v22

    move-object/from16 v0, p0

    iget v2, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ne v2, v0, :cond_1

    const/4 v2, 0x1

    :goto_1
    move/from16 v0, v22

    invoke-virtual {v3, v6, v0, v2}, Lorg/threeten/bp/format/SignStyle;->parse(ZZZ)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2425
    xor-int/lit8 v2, p3, -0x1

    goto :goto_0

    .line 2424
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 2427
    :cond_2
    const/16 v19, 0x1

    .line 2428
    add-int/lit8 p3, p3, 0x1

    .line 2440
    :cond_3
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lorg/threeten/bp/format/DateTimeParseContext;->isStrict()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual/range {p0 .. p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->isFixedWidth(Lorg/threeten/bp/format/DateTimeParseContext;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_4
    move-object/from16 v0, p0

    iget v11, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    .line 2441
    .local v11, "effMinWidth":I
    :goto_3
    add-int v14, p3, v11

    .line 2442
    .local v14, "minEndPos":I
    if-le v14, v12, :cond_a

    .line 2443
    xor-int/lit8 v2, p3, -0x1

    goto :goto_0

    .line 2429
    .end local v11    # "effMinWidth":I
    .end local v14    # "minEndPos":I
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lorg/threeten/bp/format/DateTimeParseContext;->getSymbols()Lorg/threeten/bp/format/DecimalStyle;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/format/DecimalStyle;->getNegativeSign()C

    move-result v2

    move/from16 v0, v20

    if-ne v0, v2, :cond_8

    .line 2430
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lorg/threeten/bp/format/SignStyle;

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/threeten/bp/format/DateTimeParseContext;->isStrict()Z

    move-result v22

    move-object/from16 v0, p0

    iget v2, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ne v2, v0, :cond_6

    const/4 v2, 0x1

    :goto_4
    move/from16 v0, v22

    invoke-virtual {v3, v6, v0, v2}, Lorg/threeten/bp/format/SignStyle;->parse(ZZZ)Z

    move-result v2

    if-nez v2, :cond_7

    .line 2431
    xor-int/lit8 v2, p3, -0x1

    goto/16 :goto_0

    .line 2430
    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    .line 2433
    :cond_7
    const/4 v15, 0x1

    .line 2434
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 2436
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lorg/threeten/bp/format/SignStyle;

    sget-object v3, Lorg/threeten/bp/format/SignStyle;->ALWAYS:Lorg/threeten/bp/format/SignStyle;

    if-ne v2, v3, :cond_3

    invoke-virtual/range {p1 .. p1}, Lorg/threeten/bp/format/DateTimeParseContext;->isStrict()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2437
    xor-int/lit8 v2, p3, -0x1

    goto/16 :goto_0

    .line 2440
    :cond_9
    const/4 v11, 0x1

    goto :goto_3

    .line 2445
    .restart local v11    # "effMinWidth":I
    .restart local v14    # "minEndPos":I
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lorg/threeten/bp/format/DateTimeParseContext;->isStrict()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual/range {p0 .. p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->isFixedWidth(Lorg/threeten/bp/format/DateTimeParseContext;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    const/4 v6, 0x0

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int v10, v2, v3

    .line 2446
    .local v10, "effMaxWidth":I
    const-wide/16 v4, 0x0

    .line 2447
    .local v4, "total":J
    const/16 v21, 0x0

    .line 2448
    .local v21, "totalBig":Ljava/math/BigInteger;
    move/from16 v7, p3

    .line 2449
    .local v7, "pos":I
    const/16 v17, 0x0

    .local v17, "pass":I
    :goto_6
    const/4 v2, 0x2

    move/from16 v0, v17

    if-ge v0, v2, :cond_12

    .line 2450
    add-int v2, v7, v10

    invoke-static {v2, v12}, Ljava/lang/Math;->min(II)I

    move-result v13

    .local v13, "maxEndPos":I
    move/from16 v18, v7

    .line 2451
    .end local v7    # "pos":I
    .local v18, "pos":I
    :goto_7
    move/from16 v0, v18

    if-ge v0, v13, :cond_10

    .line 2452
    add-int/lit8 v7, v18, 0x1

    .end local v18    # "pos":I
    .restart local v7    # "pos":I
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    .line 2453
    .local v8, "ch":C
    invoke-virtual/range {p1 .. p1}, Lorg/threeten/bp/format/DateTimeParseContext;->getSymbols()Lorg/threeten/bp/format/DecimalStyle;

    move-result-object v2

    invoke-virtual {v2, v8}, Lorg/threeten/bp/format/DecimalStyle;->convertToDigit(C)I

    move-result v9

    .line 2454
    .local v9, "digit":I
    if-gez v9, :cond_d

    .line 2455
    add-int/lit8 v7, v7, -0x1

    .line 2456
    if-ge v7, v14, :cond_11

    .line 2457
    xor-int/lit8 v2, p3, -0x1

    goto/16 :goto_0

    .line 2445
    .end local v4    # "total":J
    .end local v7    # "pos":I
    .end local v8    # "ch":C
    .end local v9    # "digit":I
    .end local v10    # "effMaxWidth":I
    .end local v13    # "maxEndPos":I
    .end local v17    # "pass":I
    .end local v21    # "totalBig":Ljava/math/BigInteger;
    :cond_c
    const/16 v2, 0x9

    goto :goto_5

    .line 2461
    .restart local v4    # "total":J
    .restart local v7    # "pos":I
    .restart local v8    # "ch":C
    .restart local v9    # "digit":I
    .restart local v10    # "effMaxWidth":I
    .restart local v13    # "maxEndPos":I
    .restart local v17    # "pass":I
    .restart local v21    # "totalBig":Ljava/math/BigInteger;
    :cond_d
    sub-int v2, v7, p3

    const/16 v3, 0x12

    if-le v2, v3, :cond_f

    .line 2462
    if-nez v21, :cond_e

    .line 2463
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v21

    .line 2465
    :cond_e
    sget-object v2, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    int-to-long v0, v9

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    :goto_8
    move/from16 v18, v7

    .line 2469
    .end local v7    # "pos":I
    .restart local v18    # "pos":I
    goto :goto_7

    .line 2467
    .end local v18    # "pos":I
    .restart local v7    # "pos":I
    :cond_f
    const-wide/16 v2, 0xa

    mul-long/2addr v2, v4

    int-to-long v0, v9

    move-wide/from16 v22, v0

    add-long v4, v2, v22

    goto :goto_8

    .end local v7    # "pos":I
    .end local v8    # "ch":C
    .end local v9    # "digit":I
    .restart local v18    # "pos":I
    :cond_10
    move/from16 v7, v18

    .line 2470
    .end local v18    # "pos":I
    .restart local v7    # "pos":I
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    if-lez v2, :cond_12

    if-nez v17, :cond_12

    .line 2472
    sub-int v16, v7, p3

    .line 2473
    .local v16, "parseLen":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    sub-int v2, v16, v2

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 2474
    move/from16 v7, p3

    .line 2475
    const-wide/16 v4, 0x0

    .line 2476
    const/16 v21, 0x0

    .line 2449
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 2481
    .end local v13    # "maxEndPos":I
    .end local v16    # "parseLen":I
    :cond_12
    if-eqz v15, :cond_18

    .line 2482
    if-eqz v21, :cond_16

    .line 2483
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual/range {p1 .. p1}, Lorg/threeten/bp/format/DateTimeParseContext;->isStrict()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2484
    add-int/lit8 v2, p3, -0x1

    xor-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 2486
    :cond_13
    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v21

    .line 2505
    :cond_14
    :goto_9
    if-eqz v21, :cond_1a

    .line 2506
    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    const/16 v3, 0x3f

    if-le v2, v3, :cond_15

    .line 2508
    sget-object v2, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    .line 2509
    add-int/lit8 v7, v7, -0x1

    .line 2511
    :cond_15
    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    .end local v4    # "total":J
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->setValue(Lorg/threeten/bp/format/DateTimeParseContext;JII)I

    move-result v2

    goto/16 :goto_0

    .line 2488
    .restart local v4    # "total":J
    :cond_16
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-nez v2, :cond_17

    invoke-virtual/range {p1 .. p1}, Lorg/threeten/bp/format/DateTimeParseContext;->isStrict()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2489
    add-int/lit8 v2, p3, -0x1

    xor-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 2491
    :cond_17
    neg-long v4, v4

    goto :goto_9

    .line 2493
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lorg/threeten/bp/format/SignStyle;

    sget-object v3, Lorg/threeten/bp/format/SignStyle;->EXCEEDS_PAD:Lorg/threeten/bp/format/SignStyle;

    if-ne v2, v3, :cond_14

    invoke-virtual/range {p1 .. p1}, Lorg/threeten/bp/format/DateTimeParseContext;->isStrict()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2494
    sub-int v16, v7, p3

    .line 2495
    .restart local v16    # "parseLen":I
    if-eqz v19, :cond_19

    .line 2496
    move-object/from16 v0, p0

    iget v2, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    move/from16 v0, v16

    if-gt v0, v2, :cond_14

    .line 2497
    add-int/lit8 v2, p3, -0x1

    xor-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 2500
    :cond_19
    move-object/from16 v0, p0

    iget v2, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    move/from16 v0, v16

    if-le v0, v2, :cond_14

    .line 2501
    xor-int/lit8 v2, p3, -0x1

    goto/16 :goto_0

    .end local v16    # "parseLen":I
    :cond_1a
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v6, p3

    .line 2513
    invoke-virtual/range {v2 .. v7}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->setValue(Lorg/threeten/bp/format/DateTimeParseContext;JII)I

    move-result v2

    goto/16 :goto_0
.end method

.method public print(Lorg/threeten/bp/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 9
    .param p1, "context"    # Lorg/threeten/bp/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    .line 2353
    iget-object v6, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lorg/threeten/bp/temporal/TemporalField;

    invoke-virtual {p1, v6}, Lorg/threeten/bp/format/DateTimePrintContext;->getValue(Lorg/threeten/bp/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v3

    .line 2354
    .local v3, "valueLong":Ljava/lang/Long;
    if-nez v3, :cond_0

    .line 2355
    const/4 v6, 0x0

    .line 2395
    :goto_0
    return v6

    .line 2357
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p0, p1, v6, v7}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->getValue(Lorg/threeten/bp/format/DateTimePrintContext;J)J

    move-result-wide v4

    .line 2358
    .local v4, "value":J
    invoke-virtual {p1}, Lorg/threeten/bp/format/DateTimePrintContext;->getSymbols()Lorg/threeten/bp/format/DecimalStyle;

    move-result-object v2

    .line 2359
    .local v2, "symbols":Lorg/threeten/bp/format/DecimalStyle;
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, v4, v6

    if-nez v6, :cond_1

    const-string v1, "9223372036854775808"

    .line 2360
    .local v1, "str":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    if-le v6, v7, :cond_2

    .line 2361
    new-instance v6, Lorg/threeten/bp/DateTimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Field "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lorg/threeten/bp/temporal/TemporalField;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cannot be printed as the value "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " exceeds the maximum print width of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2359
    .end local v1    # "str":Ljava/lang/String;
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2365
    .restart local v1    # "str":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2, v1}, Lorg/threeten/bp/format/DecimalStyle;->convertNumberToI18N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2367
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_4

    .line 2368
    sget-object v6, Lorg/threeten/bp/format/DateTimeFormatterBuilder$4;->$SwitchMap$org$threeten$bp$format$SignStyle:[I

    iget-object v7, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lorg/threeten/bp/format/SignStyle;

    invoke-virtual {v7}, Lorg/threeten/bp/format/SignStyle;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 2391
    :cond_3
    :goto_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget v6, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    if-ge v0, v6, :cond_5

    .line 2392
    invoke-virtual {v2}, Lorg/threeten/bp/format/DecimalStyle;->getZeroDigit()C

    move-result v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2391
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2370
    .end local v0    # "i":I
    :pswitch_0
    iget v6, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    const/16 v7, 0x13

    if-ge v6, v7, :cond_3

    sget-object v6, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->EXCEED_POINTS:[I

    iget v7, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    aget v6, v6, v7

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-ltz v6, :cond_3

    .line 2371
    invoke-virtual {v2}, Lorg/threeten/bp/format/DecimalStyle;->getPositiveSign()C

    move-result v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2375
    :pswitch_1
    invoke-virtual {v2}, Lorg/threeten/bp/format/DecimalStyle;->getPositiveSign()C

    move-result v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2379
    :cond_4
    sget-object v6, Lorg/threeten/bp/format/DateTimeFormatterBuilder$4;->$SwitchMap$org$threeten$bp$format$SignStyle:[I

    iget-object v7, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lorg/threeten/bp/format/SignStyle;

    invoke-virtual {v7}, Lorg/threeten/bp/format/SignStyle;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    goto :goto_2

    .line 2383
    :pswitch_2
    invoke-virtual {v2}, Lorg/threeten/bp/format/DecimalStyle;->getNegativeSign()C

    move-result v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2386
    :pswitch_3
    new-instance v6, Lorg/threeten/bp/DateTimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Field "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lorg/threeten/bp/temporal/TemporalField;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cannot be printed as the value "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cannot be negative according to the SignStyle"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2394
    .restart local v0    # "i":I
    :cond_5
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2395
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2368
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2379
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method setValue(Lorg/threeten/bp/format/DateTimeParseContext;JII)I
    .locals 6
    .param p1, "context"    # Lorg/threeten/bp/format/DateTimeParseContext;
    .param p2, "value"    # J
    .param p4, "errorPos"    # I
    .param p5, "successPos"    # I

    .prologue
    .line 2526
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lorg/threeten/bp/temporal/TemporalField;

    move-object v0, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/threeten/bp/format/DateTimeParseContext;->setParsedField(Lorg/threeten/bp/temporal/TemporalField;JII)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2531
    iget v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lorg/threeten/bp/format/SignStyle;

    sget-object v1, Lorg/threeten/bp/format/SignStyle;->NORMAL:Lorg/threeten/bp/format/SignStyle;

    if-ne v0, v1, :cond_0

    .line 2532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lorg/threeten/bp/temporal/TemporalField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2537
    :goto_0
    return-object v0

    .line 2534
    :cond_0
    iget v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lorg/threeten/bp/format/SignStyle;

    sget-object v1, Lorg/threeten/bp/format/SignStyle;->NOT_NEGATIVE:Lorg/threeten/bp/format/SignStyle;

    if-ne v0, v1, :cond_1

    .line 2535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lorg/threeten/bp/temporal/TemporalField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2537
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lorg/threeten/bp/temporal/TemporalField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lorg/threeten/bp/format/SignStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method withFixedWidth()Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 2335
    iget v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    if-ne v0, v5, :cond_0

    .line 2338
    .end local p0    # "this":Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;
    :cond_0
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lorg/threeten/bp/temporal/TemporalField;

    iget v2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v3, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    iget-object v4, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lorg/threeten/bp/format/SignStyle;

    invoke-direct/range {v0 .. v5}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/format/SignStyle;I)V

    move-object p0, v0

    goto :goto_0
.end method

.method withSubsequentWidth(I)Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .locals 6
    .param p1, "subsequentWidth"    # I

    .prologue
    .line 2348
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;

    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Lorg/threeten/bp/temporal/TemporalField;

    iget v2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v3, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    iget-object v4, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Lorg/threeten/bp/format/SignStyle;

    iget v5, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    add-int/2addr v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Lorg/threeten/bp/temporal/TemporalField;IILorg/threeten/bp/format/SignStyle;I)V

    return-object v0
.end method
