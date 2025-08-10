.class final Lorg/threeten/bp/format/DateTimeFormatterBuilder$InstantPrinterParser;
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
    name = "InstantPrinterParser"
.end annotation


# static fields
.field private static final SECONDS_0000_TO_1970:J = 0xe79747c00L

.field private static final SECONDS_PER_10000_YEARS:J = 0x497968bd80L


# instance fields
.field private final fractionalDigits:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "fractionalDigits"    # I

    .prologue
    .line 2921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2922
    iput p1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    .line 2923
    return-void
.end method


# virtual methods
.method public parse(Lorg/threeten/bp/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 36
    .param p1, "context"    # Lorg/threeten/bp/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .prologue
    .line 3001
    invoke-virtual/range {p1 .. p1}, Lorg/threeten/bp/format/DateTimeParseContext;->copy()Lorg/threeten/bp/format/DateTimeParseContext;

    move-result-object v29

    .line 3002
    .local v29, "newContext":Lorg/threeten/bp/format/DateTimeParseContext;
    move-object/from16 v0, p0

    iget v10, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    if-gez v10, :cond_0

    const/16 v26, 0x0

    .line 3003
    .local v26, "minDigits":I
    :goto_0
    move-object/from16 v0, p0

    iget v10, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    if-gez v10, :cond_1

    const/16 v25, 0x9

    .line 3004
    .local v25, "maxDigits":I
    :goto_1
    new-instance v10, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v10}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v11, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_LOCAL_DATE:Lorg/threeten/bp/format/DateTimeFormatter;

    invoke-virtual {v10, v11}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->append(Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v10

    const/16 v11, 0x54

    invoke-virtual {v10, v11}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v10

    sget-object v11, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    const/4 v14, 0x2

    invoke-virtual {v10, v11, v14}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v10

    const/16 v11, 0x3a

    invoke-virtual {v10, v11}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v10

    sget-object v11, Lorg/threeten/bp/temporal/ChronoField;->MINUTE_OF_HOUR:Lorg/threeten/bp/temporal/ChronoField;

    const/4 v14, 0x2

    invoke-virtual {v10, v11, v14}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v10

    const/16 v11, 0x3a

    invoke-virtual {v10, v11}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v10

    sget-object v11, Lorg/threeten/bp/temporal/ChronoField;->SECOND_OF_MINUTE:Lorg/threeten/bp/temporal/ChronoField;

    const/4 v14, 0x2

    invoke-virtual {v10, v11, v14}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v10

    sget-object v11, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    const/4 v14, 0x1

    move/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v10, v11, v0, v1, v14}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendFraction(Lorg/threeten/bp/temporal/TemporalField;IIZ)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v10

    const/16 v11, 0x5a

    invoke-virtual {v10, v11}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v10

    invoke-virtual {v10}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter()Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/threeten/bp/format/DateTimeFormatter;->toPrinterParser(Z)Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object v30

    .line 3009
    .local v30, "parser":Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;->parse(Lorg/threeten/bp/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v31

    .line 3010
    .local v31, "pos":I
    if-gez v31, :cond_2

    .line 3043
    .end local v31    # "pos":I
    :goto_2
    return v31

    .line 3002
    .end local v25    # "maxDigits":I
    .end local v26    # "minDigits":I
    .end local v30    # "parser":Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    move/from16 v26, v0

    goto :goto_0

    .line 3003
    .restart local v26    # "minDigits":I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    move/from16 v25, v0

    goto :goto_1

    .line 3015
    .restart local v25    # "maxDigits":I
    .restart local v30    # "parser":Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;
    .restart local v31    # "pos":I
    :cond_2
    sget-object v10, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Lorg/threeten/bp/format/DateTimeParseContext;->getParsed(Lorg/threeten/bp/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v34

    .line 3016
    .local v34, "yearParsed":J
    sget-object v10, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Lorg/threeten/bp/format/DateTimeParseContext;->getParsed(Lorg/threeten/bp/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->intValue()I

    move-result v5

    .line 3017
    .local v5, "month":I
    sget-object v10, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Lorg/threeten/bp/format/DateTimeParseContext;->getParsed(Lorg/threeten/bp/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->intValue()I

    move-result v6

    .line 3018
    .local v6, "day":I
    sget-object v10, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Lorg/threeten/bp/format/DateTimeParseContext;->getParsed(Lorg/threeten/bp/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->intValue()I

    move-result v7

    .line 3019
    .local v7, "hour":I
    sget-object v10, Lorg/threeten/bp/temporal/ChronoField;->MINUTE_OF_HOUR:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Lorg/threeten/bp/format/DateTimeParseContext;->getParsed(Lorg/threeten/bp/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->intValue()I

    move-result v8

    .line 3020
    .local v8, "min":I
    sget-object v10, Lorg/threeten/bp/temporal/ChronoField;->SECOND_OF_MINUTE:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Lorg/threeten/bp/format/DateTimeParseContext;->getParsed(Lorg/threeten/bp/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v32

    .line 3021
    .local v32, "secVal":Ljava/lang/Long;
    sget-object v10, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Lorg/threeten/bp/format/DateTimeParseContext;->getParsed(Lorg/threeten/bp/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v28

    .line 3022
    .local v28, "nanoVal":Ljava/lang/Long;
    if-eqz v32, :cond_4

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Long;->intValue()I

    move-result v9

    .line 3023
    .local v9, "sec":I
    :goto_3
    if-eqz v28, :cond_5

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->intValue()I

    move-result v27

    .line 3024
    .local v27, "nano":I
    :goto_4
    move-wide/from16 v0, v34

    long-to-int v10, v0

    rem-int/lit16 v4, v10, 0x2710

    .line 3025
    .local v4, "year":I
    const/16 v22, 0x0

    .line 3026
    .local v22, "days":I
    const/16 v10, 0x18

    if-ne v7, v10, :cond_6

    if-nez v8, :cond_6

    if-nez v9, :cond_6

    if-nez v27, :cond_6

    .line 3027
    const/4 v7, 0x0

    .line 3028
    const/16 v22, 0x1

    .line 3035
    :cond_3
    :goto_5
    const/4 v10, 0x0

    :try_start_0
    invoke-static/range {v4 .. v10}, Lorg/threeten/bp/LocalDateTime;->of(IIIIIII)Lorg/threeten/bp/LocalDateTime;

    move-result-object v10

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v10, v0, v1}, Lorg/threeten/bp/LocalDateTime;->plusDays(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v24

    .line 3036
    .local v24, "ldt":Lorg/threeten/bp/LocalDateTime;
    sget-object v10, Lorg/threeten/bp/ZoneOffset;->UTC:Lorg/threeten/bp/ZoneOffset;

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Lorg/threeten/bp/LocalDateTime;->toEpochSecond(Lorg/threeten/bp/ZoneOffset;)J

    move-result-wide v12

    .line 3037
    .local v12, "instantSecs":J
    const-wide/16 v10, 0x2710

    div-long v10, v34, v10

    const-wide v16, 0x497968bd80L

    move-wide/from16 v0, v16

    invoke-static {v10, v11, v0, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JJ)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    add-long/2addr v12, v10

    .line 3041
    move/from16 v15, v31

    .line 3042
    .local v15, "successPos":I
    sget-object v11, Lorg/threeten/bp/temporal/ChronoField;->INSTANT_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v10, p1

    move/from16 v14, p3

    invoke-virtual/range {v10 .. v15}, Lorg/threeten/bp/format/DateTimeParseContext;->setParsedField(Lorg/threeten/bp/temporal/TemporalField;JII)I

    move-result v15

    .line 3043
    sget-object v17, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v16, p1

    move/from16 v20, p3

    move/from16 v21, v15

    invoke-virtual/range {v16 .. v21}, Lorg/threeten/bp/format/DateTimeParseContext;->setParsedField(Lorg/threeten/bp/temporal/TemporalField;JII)I

    move-result v31

    goto/16 :goto_2

    .line 3022
    .end local v4    # "year":I
    .end local v9    # "sec":I
    .end local v12    # "instantSecs":J
    .end local v15    # "successPos":I
    .end local v22    # "days":I
    .end local v24    # "ldt":Lorg/threeten/bp/LocalDateTime;
    .end local v27    # "nano":I
    :cond_4
    const/4 v9, 0x0

    goto :goto_3

    .line 3023
    .restart local v9    # "sec":I
    :cond_5
    const/16 v27, 0x0

    goto :goto_4

    .line 3029
    .restart local v4    # "year":I
    .restart local v22    # "days":I
    .restart local v27    # "nano":I
    :cond_6
    const/16 v10, 0x17

    if-ne v7, v10, :cond_3

    const/16 v10, 0x3b

    if-ne v8, v10, :cond_3

    const/16 v10, 0x3c

    if-ne v9, v10, :cond_3

    .line 3030
    invoke-virtual/range {p1 .. p1}, Lorg/threeten/bp/format/DateTimeParseContext;->setParsedLeapSecond()V

    .line 3031
    const/16 v9, 0x3b

    goto :goto_5

    .line 3038
    :catch_0
    move-exception v23

    .line 3039
    .local v23, "ex":Ljava/lang/RuntimeException;
    xor-int/lit8 v31, p3, -0x1

    goto/16 :goto_2
.end method

.method public print(Lorg/threeten/bp/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 24
    .param p1, "context"    # Lorg/threeten/bp/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    .line 2928
    sget-object v20, Lorg/threeten/bp/temporal/ChronoField;->INSTANT_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/DateTimePrintContext;->getValue(Lorg/threeten/bp/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v11

    .line 2929
    .local v11, "inSecs":Ljava/lang/Long;
    const-wide/16 v20, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 2930
    .local v10, "inNanos":Ljava/lang/Long;
    invoke-virtual/range {p1 .. p1}, Lorg/threeten/bp/format/DateTimePrintContext;->getTemporal()Lorg/threeten/bp/temporal/TemporalAccessor;

    move-result-object v20

    sget-object v21, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v20 .. v21}, Lorg/threeten/bp/temporal/TemporalAccessor;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 2931
    invoke-virtual/range {p1 .. p1}, Lorg/threeten/bp/format/DateTimePrintContext;->getTemporal()Lorg/threeten/bp/temporal/TemporalAccessor;

    move-result-object v20

    sget-object v21, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface/range {v20 .. v21}, Lorg/threeten/bp/temporal/TemporalAccessor;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 2933
    :cond_0
    if-nez v11, :cond_1

    .line 2934
    const/16 v20, 0x0

    .line 2995
    :goto_0
    return v20

    .line 2936
    :cond_1
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 2937
    .local v12, "inSec":J
    sget-object v20, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v9

    .line 2938
    .local v9, "inNano":I
    const-wide v20, -0xe79747c00L

    cmp-long v20, v12, v20

    if-ltz v20, :cond_5

    .line 2940
    const-wide v20, 0x497968bd80L

    sub-long v20, v12, v20

    const-wide v22, 0xe79747c00L

    add-long v18, v20, v22

    .line 2941
    .local v18, "zeroSecs":J
    const-wide v20, 0x497968bd80L

    invoke-static/range {v18 .. v21}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorDiv(JJ)J

    move-result-wide v20

    const-wide/16 v22, 0x1

    add-long v6, v20, v22

    .line 2942
    .local v6, "hi":J
    const-wide v20, 0x497968bd80L

    invoke-static/range {v18 .. v21}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorMod(JJ)J

    move-result-wide v16

    .line 2943
    .local v16, "lo":J
    const-wide v20, 0xe79747c00L

    sub-long v20, v16, v20

    const/16 v22, 0x0

    sget-object v23, Lorg/threeten/bp/ZoneOffset;->UTC:Lorg/threeten/bp/ZoneOffset;

    invoke-static/range {v20 .. v23}, Lorg/threeten/bp/LocalDateTime;->ofEpochSecond(JILorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v14

    .line 2944
    .local v14, "ldt":Lorg/threeten/bp/LocalDateTime;
    const-wide/16 v20, 0x0

    cmp-long v20, v6, v20

    if-lez v20, :cond_2

    .line 2945
    const/16 v20, 0x2b

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2947
    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2948
    invoke-virtual {v14}, Lorg/threeten/bp/LocalDateTime;->getSecond()I

    move-result v20

    if-nez v20, :cond_3

    .line 2949
    const-string v20, ":00"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2973
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    move/from16 v20, v0

    const/16 v21, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 2974
    if-eqz v9, :cond_4

    .line 2975
    const/16 v20, 0x2e

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2976
    const v20, 0xf4240

    rem-int v20, v9, v20

    if-nez v20, :cond_9

    .line 2977
    const v20, 0xf4240

    div-int v20, v9, v20

    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2994
    :cond_4
    :goto_2
    const/16 v20, 0x5a

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2995
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 2953
    .end local v6    # "hi":J
    .end local v14    # "ldt":Lorg/threeten/bp/LocalDateTime;
    .end local v16    # "lo":J
    .end local v18    # "zeroSecs":J
    :cond_5
    const-wide v20, 0xe79747c00L

    add-long v18, v12, v20

    .line 2954
    .restart local v18    # "zeroSecs":J
    const-wide v20, 0x497968bd80L

    div-long v6, v18, v20

    .line 2955
    .restart local v6    # "hi":J
    const-wide v20, 0x497968bd80L

    rem-long v16, v18, v20

    .line 2956
    .restart local v16    # "lo":J
    const-wide v20, 0xe79747c00L

    sub-long v20, v16, v20

    const/16 v22, 0x0

    sget-object v23, Lorg/threeten/bp/ZoneOffset;->UTC:Lorg/threeten/bp/ZoneOffset;

    invoke-static/range {v20 .. v23}, Lorg/threeten/bp/LocalDateTime;->ofEpochSecond(JILorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v14

    .line 2957
    .restart local v14    # "ldt":Lorg/threeten/bp/LocalDateTime;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    .line 2958
    .local v15, "pos":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2959
    invoke-virtual {v14}, Lorg/threeten/bp/LocalDateTime;->getSecond()I

    move-result v20

    if-nez v20, :cond_6

    .line 2960
    const-string v20, ":00"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2962
    :cond_6
    const-wide/16 v20, 0x0

    cmp-long v20, v6, v20

    if-gez v20, :cond_3

    .line 2963
    invoke-virtual {v14}, Lorg/threeten/bp/LocalDateTime;->getYear()I

    move-result v20

    const/16 v21, -0x2710

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 2964
    add-int/lit8 v20, v15, 0x2

    const-wide/16 v22, 0x1

    sub-long v22, v6, v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p2

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v15, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 2965
    :cond_7
    const-wide/16 v20, 0x0

    cmp-long v20, v16, v20

    if-nez v20, :cond_8

    .line 2966
    move-object/from16 v0, p2

    invoke-virtual {v0, v15, v6, v7}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 2968
    :cond_8
    add-int/lit8 v20, v15, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v22

    move-object/from16 v0, p2

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 2978
    .end local v15    # "pos":I
    :cond_9
    rem-int/lit16 v0, v9, 0x3e8

    move/from16 v20, v0

    if-nez v20, :cond_a

    .line 2979
    div-int/lit16 v0, v9, 0x3e8

    move/from16 v20, v0

    const v21, 0xf4240

    add-int v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 2981
    :cond_a
    const v20, 0x3b9aca00

    add-int v20, v20, v9

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 2984
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    move/from16 v20, v0

    if-gtz v20, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    if-lez v9, :cond_4

    .line 2985
    :cond_c
    const/16 v20, 0x2e

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2986
    const v5, 0x5f5e100

    .line 2987
    .local v5, "div":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    if-gtz v9, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_4

    .line 2988
    :cond_e
    div-int v4, v9, v5

    .line 2989
    .local v4, "digit":I
    add-int/lit8 v20, v4, 0x30

    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2990
    mul-int v20, v4, v5

    sub-int v9, v9, v20

    .line 2991
    div-int/lit8 v5, v5, 0xa

    .line 2987
    add-int/lit8 v8, v8, 0x1

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3048
    const-string v0, "Instant()"

    return-object v0
.end method
