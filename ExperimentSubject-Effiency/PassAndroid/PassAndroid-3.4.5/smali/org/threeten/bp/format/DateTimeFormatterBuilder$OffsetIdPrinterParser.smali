.class final Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;
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
    name = "OffsetIdPrinterParser"
.end annotation


# static fields
.field static final INSTANCE_ID:Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

.field static final PATTERNS:[Ljava/lang/String;


# instance fields
.field private final noOffsetText:Ljava/lang/String;

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 3057
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "+HH"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "+HHmm"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "+HH:mm"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "+HHMM"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "+HH:MM"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "+HHMMss"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "+HH:MM:ss"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "+HHMMSS"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "+HH:MM:SS"

    aput-object v2, v0, v1

    sput-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    .line 3060
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    const-string v1, "Z"

    const-string v2, "+HH:MM:ss"

    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID:Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "noOffsetText"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    .line 3071
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3072
    const-string v0, "noOffsetText"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3073
    const-string v0, "pattern"

    invoke-static {p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3074
    iput-object p1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    .line 3075
    invoke-direct {p0, p2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->checkPattern(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    .line 3076
    return-void
.end method

.method private checkPattern(Ljava/lang/String;)I
    .locals 4
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 3079
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 3080
    sget-object v1, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3081
    return v0

    .line 3079
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3084
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid zone offset pattern: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseNumber([IILjava/lang/CharSequence;Z)Z
    .locals 10
    .param p1, "array"    # [I
    .param p2, "arrayIndex"    # I
    .param p3, "parseText"    # Ljava/lang/CharSequence;
    .param p4, "required"    # Z

    .prologue
    const/16 v9, 0x39

    const/16 v8, 0x30

    const/4 v5, 0x0

    .line 3171
    iget v6, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    add-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0x2

    if-ge v6, p2, :cond_1

    move p4, v5

    .line 3195
    .end local p4    # "required":Z
    :cond_0
    :goto_0
    return p4

    .line 3174
    .restart local p4    # "required":Z
    :cond_1
    aget v2, p1, v5

    .line 3175
    .local v2, "pos":I
    iget v6, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_2

    const/4 v6, 0x1

    if-le p2, v6, :cond_2

    .line 3176
    add-int/lit8 v6, v2, 0x1

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-gt v6, v7, :cond_0

    invoke-interface {p3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x3a

    if-ne v6, v7, :cond_0

    .line 3179
    add-int/lit8 v2, v2, 0x1

    .line 3181
    :cond_2
    add-int/lit8 v6, v2, 0x2

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-gt v6, v7, :cond_0

    .line 3184
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pos":I
    .local v3, "pos":I
    invoke-interface {p3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 3185
    .local v0, "ch1":C
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    invoke-interface {p3, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 3186
    .local v1, "ch2":C
    if-lt v0, v8, :cond_0

    if-gt v0, v9, :cond_0

    if-lt v1, v8, :cond_0

    if-gt v1, v9, :cond_0

    .line 3189
    add-int/lit8 v6, v0, -0x30

    mul-int/lit8 v6, v6, 0xa

    add-int/lit8 v7, v1, -0x30

    add-int v4, v6, v7

    .line 3190
    .local v4, "value":I
    if-ltz v4, :cond_0

    const/16 v6, 0x3b

    if-gt v4, v6, :cond_0

    .line 3193
    aput v4, p1, p2

    .line 3194
    aput v2, p1, v5

    move p4, v5

    .line 3195
    goto :goto_0
.end method


# virtual methods
.method public parse(Lorg/threeten/bp/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 24
    .param p1, "context"    # Lorg/threeten/bp/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .prologue
    .line 3124
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v21

    .line 3125
    .local v21, "length":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    .line 3126
    .local v9, "noOffsetLen":I
    if-nez v9, :cond_0

    .line 3127
    move/from16 v0, p3

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 3128
    sget-object v5, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    const-wide/16 v6, 0x0

    move-object/from16 v4, p1

    move/from16 v8, p3

    move/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Lorg/threeten/bp/format/DateTimeParseContext;->setParsedField(Lorg/threeten/bp/temporal/TemporalField;JII)I

    .end local v9    # "noOffsetLen":I
    move-result v4

    .line 3158
    :goto_0
    return v4

    .line 3131
    .restart local v9    # "noOffsetLen":I
    :cond_0
    move/from16 v0, p3

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 3132
    xor-int/lit8 v4, p3, -0x1

    goto :goto_0

    .line 3134
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual/range {v4 .. v9}, Lorg/threeten/bp/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3135
    sget-object v11, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    const-wide/16 v12, 0x0

    add-int v15, p3, v9

    move-object/from16 v10, p1

    move/from16 v14, p3

    invoke-virtual/range {v10 .. v15}, Lorg/threeten/bp/format/DateTimeParseContext;->setParsedField(Lorg/threeten/bp/temporal/TemporalField;JII)I

    move-result v4

    goto :goto_0

    .line 3140
    :cond_2
    invoke-interface/range {p2 .. p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v23

    .line 3141
    .local v23, "sign":C
    const/16 v4, 0x2b

    move/from16 v0, v23

    if-eq v0, v4, :cond_3

    const/16 v4, 0x2d

    move/from16 v0, v23

    if-ne v0, v4, :cond_8

    .line 3143
    :cond_3
    const/16 v4, 0x2d

    move/from16 v0, v23

    if-ne v0, v4, :cond_5

    const/16 v22, -0x1

    .line 3144
    .local v22, "negative":I
    :goto_1
    const/4 v4, 0x4

    new-array v0, v4, [I

    move-object/from16 v20, v0

    .line 3145
    .local v20, "array":[I
    const/4 v4, 0x0

    add-int/lit8 v5, p3, 0x1

    aput v5, v20, v4

    .line 3146
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v4, v2, v5}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseNumber([IILjava/lang/CharSequence;Z)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    const/4 v6, 0x3

    if-lt v4, v6, :cond_6

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v5, v2, v4}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseNumber([IILjava/lang/CharSequence;Z)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v4, v2, v5}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseNumber([IILjava/lang/CharSequence;Z)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_4
    const/4 v4, 0x1

    :goto_3
    if-nez v4, :cond_8

    .line 3150
    move/from16 v0, v22

    int-to-long v4, v0

    const/4 v6, 0x1

    aget v6, v20, v6

    int-to-long v6, v6

    const-wide/16 v10, 0xe10

    mul-long/2addr v6, v10

    const/4 v8, 0x2

    aget v8, v20, v8

    int-to-long v10, v8

    const-wide/16 v14, 0x3c

    mul-long/2addr v10, v14

    add-long/2addr v6, v10

    const/4 v8, 0x3

    aget v8, v20, v8

    int-to-long v10, v8

    add-long/2addr v6, v10

    mul-long v12, v4, v6

    .line 3151
    .local v12, "offsetSecs":J
    sget-object v11, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    const/4 v4, 0x0

    aget v15, v20, v4

    move-object/from16 v10, p1

    move/from16 v14, p3

    invoke-virtual/range {v10 .. v15}, Lorg/threeten/bp/format/DateTimeParseContext;->setParsedField(Lorg/threeten/bp/temporal/TemporalField;JII)I

    move-result v4

    goto/16 :goto_0

    .line 3143
    .end local v12    # "offsetSecs":J
    .end local v20    # "array":[I
    .end local v22    # "negative":I
    :cond_5
    const/16 v22, 0x1

    goto :goto_1

    .line 3146
    .restart local v20    # "array":[I
    .restart local v22    # "negative":I
    :cond_6
    const/4 v4, 0x0

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    .line 3155
    .end local v20    # "array":[I
    .end local v22    # "negative":I
    :cond_8
    if-nez v9, :cond_9

    .line 3156
    sget-object v15, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    const-wide/16 v16, 0x0

    add-int v19, p3, v9

    move-object/from16 v14, p1

    move/from16 v18, p3

    invoke-virtual/range {v14 .. v19}, Lorg/threeten/bp/format/DateTimeParseContext;->setParsedField(Lorg/threeten/bp/temporal/TemporalField;JII)I

    move-result v4

    goto/16 :goto_0

    .line 3158
    :cond_9
    xor-int/lit8 v4, p3, -0x1

    goto/16 :goto_0
.end method

.method public print(Lorg/threeten/bp/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 12
    .param p1, "context"    # Lorg/threeten/bp/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v8, 0x1

    .line 3089
    sget-object v7, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p1, v7}, Lorg/threeten/bp/format/DateTimePrintContext;->getValue(Lorg/threeten/bp/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v4

    .line 3090
    .local v4, "offsetSecs":Ljava/lang/Long;
    if-nez v4, :cond_0

    .line 3091
    const/4 v7, 0x0

    .line 3119
    :goto_0
    return v7

    .line 3093
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeToInt(J)I

    move-result v6

    .line 3094
    .local v6, "totalSecs":I
    if-nez v6, :cond_2

    .line 3095
    iget-object v7, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    move v7, v8

    .line 3119
    goto :goto_0

    .line 3097
    :cond_2
    div-int/lit16 v7, v6, 0xe10

    rem-int/lit8 v7, v7, 0x64

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 3098
    .local v0, "absHours":I
    div-int/lit8 v7, v6, 0x3c

    rem-int/lit8 v7, v7, 0x3c

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 3099
    .local v1, "absMinutes":I
    rem-int/lit8 v7, v6, 0x3c

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 3100
    .local v2, "absSeconds":I
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 3101
    .local v3, "bufPos":I
    move v5, v0

    .line 3102
    .local v5, "output":I
    if-gez v6, :cond_6

    const-string v7, "-"

    :goto_2
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    div-int/lit8 v9, v0, 0xa

    add-int/lit8 v9, v9, 0x30

    int-to-char v9, v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    rem-int/lit8 v9, v0, 0xa

    add-int/lit8 v9, v9, 0x30

    int-to-char v9, v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3104
    iget v7, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    const/4 v9, 0x3

    if-ge v7, v9, :cond_3

    iget v7, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    if-lt v7, v8, :cond_5

    if-lez v1, :cond_5

    .line 3105
    :cond_3
    iget v7, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    rem-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_7

    const-string v7, ":"

    :goto_3
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    div-int/lit8 v9, v1, 0xa

    add-int/lit8 v9, v9, 0x30

    int-to-char v9, v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    rem-int/lit8 v9, v1, 0xa

    add-int/lit8 v9, v9, 0x30

    int-to-char v9, v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3107
    add-int/2addr v5, v1

    .line 3108
    iget v7, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    const/4 v9, 0x7

    if-ge v7, v9, :cond_4

    iget v7, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    const/4 v9, 0x5

    if-lt v7, v9, :cond_5

    if-lez v2, :cond_5

    .line 3109
    :cond_4
    iget v7, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    rem-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_8

    const-string v7, ":"

    :goto_4
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    div-int/lit8 v9, v2, 0xa

    add-int/lit8 v9, v9, 0x30

    int-to-char v9, v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    rem-int/lit8 v9, v2, 0xa

    add-int/lit8 v9, v9, 0x30

    int-to-char v9, v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3111
    add-int/2addr v5, v2

    .line 3114
    :cond_5
    if-nez v5, :cond_1

    .line 3115
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3116
    iget-object v7, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 3102
    :cond_6
    const-string v7, "+"

    goto :goto_2

    .line 3105
    :cond_7
    const-string v7, ""

    goto :goto_3

    .line 3109
    :cond_8
    const-string v7, ""

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3200
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    const-string v2, "\'"

    const-string v3, "\'\'"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 3201
    .local v0, "converted":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Offset("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    iget v3, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
