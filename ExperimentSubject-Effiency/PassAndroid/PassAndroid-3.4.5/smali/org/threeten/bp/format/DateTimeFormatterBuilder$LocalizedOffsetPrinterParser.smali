.class final Lorg/threeten/bp/format/DateTimeFormatterBuilder$LocalizedOffsetPrinterParser;
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
    name = "LocalizedOffsetPrinterParser"
.end annotation


# instance fields
.field private final style:Lorg/threeten/bp/format/TextStyle;


# direct methods
.method public constructor <init>(Lorg/threeten/bp/format/TextStyle;)V
    .locals 0
    .param p1, "style"    # Lorg/threeten/bp/format/TextStyle;

    .prologue
    .line 3212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3213
    iput-object p1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$LocalizedOffsetPrinterParser;->style:Lorg/threeten/bp/format/TextStyle;

    .line 3214
    return-void
.end method


# virtual methods
.method public parse(Lorg/threeten/bp/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 18
    .param p1, "context"    # Lorg/threeten/bp/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .prologue
    .line 3246
    const-string v7, "GMT"

    const/4 v8, 0x0

    const/4 v9, 0x3

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual/range {v4 .. v9}, Lorg/threeten/bp/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3247
    xor-int/lit8 v4, p3, -0x1

    .line 3332
    :goto_0
    return v4

    .line 3249
    :cond_0
    add-int/lit8 p3, p3, 0x3

    .line 3250
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$LocalizedOffsetPrinterParser;->style:Lorg/threeten/bp/format/TextStyle;

    sget-object v5, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    if-ne v4, v5, :cond_1

    .line 3251
    new-instance v4, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    const-string v5, ""

    const-string v6, "+HH:MM:ss"

    invoke-direct {v4, v5, v6}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parse(Lorg/threeten/bp/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v4

    goto :goto_0

    .line 3253
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v11

    .line 3254
    .local v11, "end":I
    move/from16 v0, p3

    if-ne v0, v11, :cond_2

    .line 3255
    sget-object v5, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    const-wide/16 v6, 0x0

    move-object/from16 v4, p1

    move/from16 v8, p3

    move/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Lorg/threeten/bp/format/DateTimeParseContext;->setParsedField(Lorg/threeten/bp/temporal/TemporalField;JII)I

    move-result v4

    goto :goto_0

    .line 3257
    :cond_2
    invoke-interface/range {p2 .. p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v17

    .line 3258
    .local v17, "sign":C
    const/16 v4, 0x2b

    move/from16 v0, v17

    if-eq v0, v4, :cond_3

    const/16 v4, 0x2d

    move/from16 v0, v17

    if-eq v0, v4, :cond_3

    .line 3259
    sget-object v5, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    const-wide/16 v6, 0x0

    move-object/from16 v4, p1

    move/from16 v8, p3

    move/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Lorg/threeten/bp/format/DateTimeParseContext;->setParsedField(Lorg/threeten/bp/temporal/TemporalField;JII)I

    move-result v4

    goto :goto_0

    .line 3261
    :cond_3
    const/16 v4, 0x2d

    move/from16 v0, v17

    if-ne v0, v4, :cond_4

    const/4 v14, -0x1

    .line 3262
    .local v14, "negative":I
    :goto_1
    move/from16 v0, p3

    if-ne v0, v11, :cond_5

    .line 3263
    xor-int/lit8 v4, p3, -0x1

    goto :goto_0

    .line 3261
    .end local v14    # "negative":I
    :cond_4
    const/4 v14, 0x1

    goto :goto_1

    .line 3265
    .restart local v14    # "negative":I
    :cond_5
    add-int/lit8 p3, p3, 0x1

    .line 3267
    invoke-interface/range {p2 .. p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 3268
    .local v10, "ch":C
    const/16 v4, 0x30

    if-lt v10, v4, :cond_6

    const/16 v4, 0x39

    if-le v10, v4, :cond_7

    .line 3269
    :cond_6
    xor-int/lit8 v4, p3, -0x1

    goto :goto_0

    .line 3271
    :cond_7
    add-int/lit8 p3, p3, 0x1

    .line 3272
    add-int/lit8 v12, v10, -0x30

    .line 3273
    .local v12, "hour":I
    move/from16 v0, p3

    if-eq v0, v11, :cond_9

    .line 3274
    invoke-interface/range {p2 .. p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 3275
    const/16 v4, 0x30

    if-lt v10, v4, :cond_9

    const/16 v4, 0x39

    if-gt v10, v4, :cond_9

    .line 3276
    mul-int/lit8 v4, v12, 0xa

    add-int/lit8 v5, v10, -0x30

    add-int v12, v4, v5

    .line 3277
    const/16 v4, 0x17

    if-le v12, v4, :cond_8

    .line 3278
    xor-int/lit8 v4, p3, -0x1

    goto/16 :goto_0

    .line 3280
    :cond_8
    add-int/lit8 p3, p3, 0x1

    .line 3283
    :cond_9
    move/from16 v0, p3

    if-eq v0, v11, :cond_a

    invoke-interface/range {p2 .. p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_b

    .line 3284
    :cond_a
    mul-int/lit16 v4, v14, 0xe10

    mul-int v15, v4, v12

    .line 3285
    .local v15, "offset":I
    sget-object v5, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v6, v15

    move-object/from16 v4, p1

    move/from16 v8, p3

    move/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Lorg/threeten/bp/format/DateTimeParseContext;->setParsedField(Lorg/threeten/bp/temporal/TemporalField;JII)I

    move-result v4

    goto/16 :goto_0

    .line 3287
    .end local v15    # "offset":I
    :cond_b
    add-int/lit8 p3, p3, 0x1

    .line 3289
    add-int/lit8 v4, v11, -0x2

    move/from16 v0, p3

    if-le v0, v4, :cond_c

    .line 3290
    xor-int/lit8 v4, p3, -0x1

    goto/16 :goto_0

    .line 3292
    :cond_c
    invoke-interface/range {p2 .. p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 3293
    const/16 v4, 0x30

    if-lt v10, v4, :cond_d

    const/16 v4, 0x39

    if-le v10, v4, :cond_e

    .line 3294
    :cond_d
    xor-int/lit8 v4, p3, -0x1

    goto/16 :goto_0

    .line 3296
    :cond_e
    add-int/lit8 p3, p3, 0x1

    .line 3297
    add-int/lit8 v13, v10, -0x30

    .line 3298
    .local v13, "min":I
    invoke-interface/range {p2 .. p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 3299
    const/16 v4, 0x30

    if-lt v10, v4, :cond_f

    const/16 v4, 0x39

    if-le v10, v4, :cond_10

    .line 3300
    :cond_f
    xor-int/lit8 v4, p3, -0x1

    goto/16 :goto_0

    .line 3302
    :cond_10
    add-int/lit8 p3, p3, 0x1

    .line 3303
    mul-int/lit8 v4, v13, 0xa

    add-int/lit8 v5, v10, -0x30

    add-int v13, v4, v5

    .line 3304
    const/16 v4, 0x3b

    if-le v13, v4, :cond_11

    .line 3305
    xor-int/lit8 v4, p3, -0x1

    goto/16 :goto_0

    .line 3307
    :cond_11
    move/from16 v0, p3

    if-eq v0, v11, :cond_12

    invoke-interface/range {p2 .. p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_13

    .line 3308
    :cond_12
    mul-int/lit16 v4, v12, 0xe10

    mul-int/lit8 v5, v13, 0x3c

    add-int/2addr v4, v5

    mul-int v15, v14, v4

    .line 3309
    .restart local v15    # "offset":I
    sget-object v5, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v6, v15

    move-object/from16 v4, p1

    move/from16 v8, p3

    move/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Lorg/threeten/bp/format/DateTimeParseContext;->setParsedField(Lorg/threeten/bp/temporal/TemporalField;JII)I

    move-result v4

    goto/16 :goto_0

    .line 3311
    .end local v15    # "offset":I
    :cond_13
    add-int/lit8 p3, p3, 0x1

    .line 3313
    add-int/lit8 v4, v11, -0x2

    move/from16 v0, p3

    if-le v0, v4, :cond_14

    .line 3314
    xor-int/lit8 v4, p3, -0x1

    goto/16 :goto_0

    .line 3316
    :cond_14
    invoke-interface/range {p2 .. p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 3317
    const/16 v4, 0x30

    if-lt v10, v4, :cond_15

    const/16 v4, 0x39

    if-le v10, v4, :cond_16

    .line 3318
    :cond_15
    xor-int/lit8 v4, p3, -0x1

    goto/16 :goto_0

    .line 3320
    :cond_16
    add-int/lit8 p3, p3, 0x1

    .line 3321
    add-int/lit8 v16, v10, -0x30

    .line 3322
    .local v16, "sec":I
    invoke-interface/range {p2 .. p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 3323
    const/16 v4, 0x30

    if-lt v10, v4, :cond_17

    const/16 v4, 0x39

    if-le v10, v4, :cond_18

    .line 3324
    :cond_17
    xor-int/lit8 v4, p3, -0x1

    goto/16 :goto_0

    .line 3326
    :cond_18
    add-int/lit8 p3, p3, 0x1

    .line 3327
    mul-int/lit8 v4, v16, 0xa

    add-int/lit8 v5, v10, -0x30

    add-int v16, v4, v5

    .line 3328
    const/16 v4, 0x3b

    move/from16 v0, v16

    if-le v0, v4, :cond_19

    .line 3329
    xor-int/lit8 v4, p3, -0x1

    goto/16 :goto_0

    .line 3331
    :cond_19
    mul-int/lit16 v4, v12, 0xe10

    mul-int/lit8 v5, v13, 0x3c

    add-int/2addr v4, v5

    add-int v4, v4, v16

    mul-int v15, v14, v4

    .line 3332
    .restart local v15    # "offset":I
    sget-object v5, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v6, v15

    move-object/from16 v4, p1

    move/from16 v8, p3

    move/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Lorg/threeten/bp/format/DateTimeParseContext;->setParsedField(Lorg/threeten/bp/temporal/TemporalField;JII)I

    move-result v4

    goto/16 :goto_0
.end method

.method public print(Lorg/threeten/bp/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 8
    .param p1, "context"    # Lorg/threeten/bp/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    .line 3218
    sget-object v5, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p1, v5}, Lorg/threeten/bp/format/DateTimePrintContext;->getValue(Lorg/threeten/bp/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v3

    .line 3219
    .local v3, "offsetSecs":Ljava/lang/Long;
    if-nez v3, :cond_0

    .line 3220
    const/4 v5, 0x0

    .line 3241
    :goto_0
    return v5

    .line 3222
    :cond_0
    const-string v5, "GMT"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3223
    iget-object v5, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$LocalizedOffsetPrinterParser;->style:Lorg/threeten/bp/format/TextStyle;

    sget-object v6, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    if-ne v5, v6, :cond_1

    .line 3224
    new-instance v5, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    const-string v6, ""

    const-string v7, "+HH:MM:ss"

    invoke-direct {v5, v6, v7}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, p1, p2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->print(Lorg/threeten/bp/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    move-result v5

    goto :goto_0

    .line 3226
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeToInt(J)I

    move-result v4

    .line 3227
    .local v4, "totalSecs":I
    if-eqz v4, :cond_3

    .line 3228
    div-int/lit16 v5, v4, 0xe10

    rem-int/lit8 v5, v5, 0x64

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 3229
    .local v0, "absHours":I
    div-int/lit8 v5, v4, 0x3c

    rem-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 3230
    .local v1, "absMinutes":I
    rem-int/lit8 v5, v4, 0x3c

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 3231
    .local v2, "absSeconds":I
    if-gez v4, :cond_4

    const-string v5, "-"

    :goto_1
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3232
    if-gtz v1, :cond_2

    if-lez v2, :cond_3

    .line 3233
    :cond_2
    const-string v5, ":"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-int/lit8 v6, v1, 0xa

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    rem-int/lit8 v6, v1, 0xa

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3235
    if-lez v2, :cond_3

    .line 3236
    const-string v5, ":"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-int/lit8 v6, v2, 0xa

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    rem-int/lit8 v6, v2, 0xa

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3241
    .end local v0    # "absHours":I
    .end local v1    # "absMinutes":I
    .end local v2    # "absSeconds":I
    :cond_3
    const/4 v5, 0x1

    goto :goto_0

    .line 3231
    .restart local v0    # "absHours":I
    .restart local v1    # "absMinutes":I
    .restart local v2    # "absSeconds":I
    :cond_4
    const-string v5, "+"

    goto :goto_1
.end method
