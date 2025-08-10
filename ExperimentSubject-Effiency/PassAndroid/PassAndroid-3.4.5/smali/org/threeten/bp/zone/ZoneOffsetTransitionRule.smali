.class public final Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;
.super Ljava/lang/Object;
.source "ZoneOffsetTransitionRule.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$1;,
        Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5f9acf201199524bL


# instance fields
.field private final dom:B

.field private final dow:Lorg/threeten/bp/DayOfWeek;

.field private final month:Lorg/threeten/bp/Month;

.field private final offsetAfter:Lorg/threeten/bp/ZoneOffset;

.field private final offsetBefore:Lorg/threeten/bp/ZoneOffset;

.field private final standardOffset:Lorg/threeten/bp/ZoneOffset;

.field private final time:Lorg/threeten/bp/LocalTime;

.field private final timeDefinition:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

.field private final timeEndOfDay:Z


# direct methods
.method constructor <init>(Lorg/threeten/bp/Month;ILorg/threeten/bp/DayOfWeek;Lorg/threeten/bp/LocalTime;ZLorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneOffset;)V
    .locals 1
    .param p1, "month"    # Lorg/threeten/bp/Month;
    .param p2, "dayOfMonthIndicator"    # I
    .param p3, "dayOfWeek"    # Lorg/threeten/bp/DayOfWeek;
    .param p4, "time"    # Lorg/threeten/bp/LocalTime;
    .param p5, "timeEndOfDay"    # Z
    .param p6, "timeDefnition"    # Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .param p7, "standardOffset"    # Lorg/threeten/bp/ZoneOffset;
    .param p8, "offsetBefore"    # Lorg/threeten/bp/ZoneOffset;
    .param p9, "offsetAfter"    # Lorg/threeten/bp/ZoneOffset;

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->month:Lorg/threeten/bp/Month;

    .line 191
    int-to-byte v0, p2

    iput-byte v0, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->dom:B

    .line 192
    iput-object p3, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->dow:Lorg/threeten/bp/DayOfWeek;

    .line 193
    iput-object p4, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->time:Lorg/threeten/bp/LocalTime;

    .line 194
    iput-boolean p5, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    .line 195
    iput-object p6, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->timeDefinition:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 196
    iput-object p7, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->standardOffset:Lorg/threeten/bp/ZoneOffset;

    .line 197
    iput-object p8, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->offsetBefore:Lorg/threeten/bp/ZoneOffset;

    .line 198
    iput-object p9, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->offsetAfter:Lorg/threeten/bp/ZoneOffset;

    .line 199
    return-void
.end method

.method public static of(Lorg/threeten/bp/Month;ILorg/threeten/bp/DayOfWeek;Lorg/threeten/bp/LocalTime;ZLorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;
    .locals 11
    .param p0, "month"    # Lorg/threeten/bp/Month;
    .param p1, "dayOfMonthIndicator"    # I
    .param p2, "dayOfWeek"    # Lorg/threeten/bp/DayOfWeek;
    .param p3, "time"    # Lorg/threeten/bp/LocalTime;
    .param p4, "timeEndOfDay"    # Z
    .param p5, "timeDefnition"    # Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .param p6, "standardOffset"    # Lorg/threeten/bp/ZoneOffset;
    .param p7, "offsetBefore"    # Lorg/threeten/bp/ZoneOffset;
    .param p8, "offsetAfter"    # Lorg/threeten/bp/ZoneOffset;

    .prologue
    .line 148
    const-string v1, "month"

    invoke-static {p0, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 149
    const-string v1, "time"

    invoke-static {p3, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 150
    const-string v1, "timeDefnition"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 151
    const-string v1, "standardOffset"

    move-object/from16 v0, p6

    invoke-static {v0, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 152
    const-string v1, "offsetBefore"

    move-object/from16 v0, p7

    invoke-static {v0, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 153
    const-string v1, "offsetAfter"

    move-object/from16 v0, p8

    invoke-static {v0, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 154
    const/16 v1, -0x1c

    if-lt p1, v1, :cond_0

    const/16 v1, 0x1f

    if-gt p1, v1, :cond_0

    if-nez p1, :cond_1

    .line 155
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Day of month indicator must be between -28 and 31 inclusive excluding zero"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    :cond_1
    if-eqz p4, :cond_2

    sget-object v1, Lorg/threeten/bp/LocalTime;->MIDNIGHT:Lorg/threeten/bp/LocalTime;

    invoke-virtual {p3, v1}, Lorg/threeten/bp/LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 158
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Time must be midnight when end of day flag is true"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    :cond_2
    new-instance v1, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;-><init>(Lorg/threeten/bp/Month;ILorg/threeten/bp/DayOfWeek;Lorg/threeten/bp/LocalTime;ZLorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneOffset;)V

    return-object v1
.end method

.method static readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;
    .locals 20
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v13

    .line 259
    .local v13, "data":I
    ushr-int/lit8 v6, v13, 0x1c

    invoke-static {v6}, Lorg/threeten/bp/Month;->of(I)Lorg/threeten/bp/Month;

    move-result-object v2

    .line 260
    .local v2, "month":Lorg/threeten/bp/Month;
    const/high16 v6, 0xfc00000

    and-int/2addr v6, v13

    ushr-int/lit8 v6, v6, 0x16

    add-int/lit8 v3, v6, -0x20

    .line 261
    .local v3, "dom":I
    const/high16 v6, 0x380000

    and-int/2addr v6, v13

    ushr-int/lit8 v14, v6, 0x13

    .line 262
    .local v14, "dowByte":I
    if-nez v14, :cond_0

    const/4 v4, 0x0

    .line 263
    .local v4, "dow":Lorg/threeten/bp/DayOfWeek;
    :goto_0
    const v6, 0x7c000

    and-int/2addr v6, v13

    ushr-int/lit8 v16, v6, 0xe

    .line 264
    .local v16, "timeByte":I
    invoke-static {}, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->values()[Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    move-result-object v6

    and-int/lit16 v0, v13, 0x3000

    move/from16 v17, v0

    ushr-int/lit8 v17, v17, 0xc

    aget-object v7, v6, v17

    .line 265
    .local v7, "defn":Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;
    and-int/lit16 v6, v13, 0xff0

    ushr-int/lit8 v15, v6, 0x4

    .line 266
    .local v15, "stdByte":I
    and-int/lit8 v6, v13, 0xc

    ushr-int/lit8 v12, v6, 0x2

    .line 267
    .local v12, "beforeByte":I
    and-int/lit8 v11, v13, 0x3

    .line 268
    .local v11, "afterByte":I
    const/16 v6, 0x1f

    move/from16 v0, v16

    if-ne v0, v6, :cond_1

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Lorg/threeten/bp/LocalTime;->ofSecondOfDay(J)Lorg/threeten/bp/LocalTime;

    move-result-object v5

    .line 269
    .local v5, "time":Lorg/threeten/bp/LocalTime;
    :goto_1
    const/16 v6, 0xff

    if-ne v15, v6, :cond_2

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v6

    invoke-static {v6}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object v8

    .line 270
    .local v8, "std":Lorg/threeten/bp/ZoneOffset;
    :goto_2
    const/4 v6, 0x3

    if-ne v12, v6, :cond_3

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v6

    invoke-static {v6}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object v9

    .line 271
    .local v9, "before":Lorg/threeten/bp/ZoneOffset;
    :goto_3
    const/4 v6, 0x3

    if-ne v11, v6, :cond_4

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v6

    invoke-static {v6}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object v10

    .line 272
    .local v10, "after":Lorg/threeten/bp/ZoneOffset;
    :goto_4
    const/16 v6, 0x18

    move/from16 v0, v16

    if-ne v0, v6, :cond_5

    const/4 v6, 0x1

    :goto_5
    invoke-static/range {v2 .. v10}, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->of(Lorg/threeten/bp/Month;ILorg/threeten/bp/DayOfWeek;Lorg/threeten/bp/LocalTime;ZLorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;

    move-result-object v6

    return-object v6

    .line 262
    .end local v4    # "dow":Lorg/threeten/bp/DayOfWeek;
    .end local v5    # "time":Lorg/threeten/bp/LocalTime;
    .end local v7    # "defn":Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .end local v8    # "std":Lorg/threeten/bp/ZoneOffset;
    .end local v9    # "before":Lorg/threeten/bp/ZoneOffset;
    .end local v10    # "after":Lorg/threeten/bp/ZoneOffset;
    .end local v11    # "afterByte":I
    .end local v12    # "beforeByte":I
    .end local v15    # "stdByte":I
    .end local v16    # "timeByte":I
    :cond_0
    invoke-static {v14}, Lorg/threeten/bp/DayOfWeek;->of(I)Lorg/threeten/bp/DayOfWeek;

    move-result-object v4

    goto :goto_0

    .line 268
    .restart local v4    # "dow":Lorg/threeten/bp/DayOfWeek;
    .restart local v7    # "defn":Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .restart local v11    # "afterByte":I
    .restart local v12    # "beforeByte":I
    .restart local v15    # "stdByte":I
    .restart local v16    # "timeByte":I
    :cond_1
    rem-int/lit8 v6, v16, 0x18

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v6, v0}, Lorg/threeten/bp/LocalTime;->of(II)Lorg/threeten/bp/LocalTime;

    move-result-object v5

    goto :goto_1

    .line 269
    .restart local v5    # "time":Lorg/threeten/bp/LocalTime;
    :cond_2
    add-int/lit8 v6, v15, -0x80

    mul-int/lit16 v6, v6, 0x384

    invoke-static {v6}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object v8

    goto :goto_2

    .line 270
    .restart local v8    # "std":Lorg/threeten/bp/ZoneOffset;
    :cond_3
    invoke-virtual {v8}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v6

    mul-int/lit16 v0, v12, 0x708

    move/from16 v17, v0

    add-int v6, v6, v17

    invoke-static {v6}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object v9

    goto :goto_3

    .line 271
    .restart local v9    # "before":Lorg/threeten/bp/ZoneOffset;
    :cond_4
    invoke-virtual {v8}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v6

    mul-int/lit16 v0, v11, 0x708

    move/from16 v17, v0

    add-int v6, v6, v17

    invoke-static {v6}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object v10

    goto :goto_4

    .line 272
    .restart local v10    # "after":Lorg/threeten/bp/ZoneOffset;
    :cond_5
    const/4 v6, 0x0

    goto :goto_5
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 208
    new-instance v0, Lorg/threeten/bp/zone/Ser;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/zone/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public createTransition(I)Lorg/threeten/bp/zone/ZoneOffsetTransition;
    .locals 8
    .param p1, "year"    # I

    .prologue
    .line 401
    iget-byte v3, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->dom:B

    if-gez v3, :cond_2

    .line 402
    iget-object v3, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->month:Lorg/threeten/bp/Month;

    iget-object v4, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->month:Lorg/threeten/bp/Month;

    sget-object v5, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    int-to-long v6, p1

    invoke-virtual {v5, v6, v7}, Lorg/threeten/bp/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v5

    invoke-virtual {v4, v5}, Lorg/threeten/bp/Month;->length(Z)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iget-byte v5, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->dom:B

    add-int/2addr v4, v5

    invoke-static {p1, v3, v4}, Lorg/threeten/bp/LocalDate;->of(ILorg/threeten/bp/Month;I)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    .line 403
    .local v0, "date":Lorg/threeten/bp/LocalDate;
    iget-object v3, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->dow:Lorg/threeten/bp/DayOfWeek;

    if-eqz v3, :cond_0

    .line 404
    iget-object v3, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->dow:Lorg/threeten/bp/DayOfWeek;

    invoke-static {v3}, Lorg/threeten/bp/temporal/TemporalAdjusters;->previousOrSame(Lorg/threeten/bp/DayOfWeek;)Lorg/threeten/bp/temporal/TemporalAdjuster;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/threeten/bp/LocalDate;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    .line 412
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-eqz v3, :cond_1

    .line 413
    const-wide/16 v4, 0x1

    invoke-virtual {v0, v4, v5}, Lorg/threeten/bp/LocalDate;->plusDays(J)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    .line 415
    :cond_1
    iget-object v3, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->time:Lorg/threeten/bp/LocalTime;

    invoke-static {v0, v3}, Lorg/threeten/bp/LocalDateTime;->of(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v1

    .line 416
    .local v1, "localDT":Lorg/threeten/bp/LocalDateTime;
    iget-object v3, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->timeDefinition:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    iget-object v4, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->standardOffset:Lorg/threeten/bp/ZoneOffset;

    iget-object v5, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->offsetBefore:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v3, v1, v4, v5}, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->createDateTime(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v2

    .line 417
    .local v2, "transition":Lorg/threeten/bp/LocalDateTime;
    new-instance v3, Lorg/threeten/bp/zone/ZoneOffsetTransition;

    iget-object v4, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->offsetBefore:Lorg/threeten/bp/ZoneOffset;

    iget-object v5, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->offsetAfter:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {v3, v2, v4, v5}, Lorg/threeten/bp/zone/ZoneOffsetTransition;-><init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneOffset;)V

    return-object v3

    .line 407
    .end local v0    # "date":Lorg/threeten/bp/LocalDate;
    .end local v1    # "localDT":Lorg/threeten/bp/LocalDateTime;
    .end local v2    # "transition":Lorg/threeten/bp/LocalDateTime;
    :cond_2
    iget-object v3, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->month:Lorg/threeten/bp/Month;

    iget-byte v4, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->dom:B

    invoke-static {p1, v3, v4}, Lorg/threeten/bp/LocalDate;->of(ILorg/threeten/bp/Month;I)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    .line 408
    .restart local v0    # "date":Lorg/threeten/bp/LocalDate;
    iget-object v3, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->dow:Lorg/threeten/bp/DayOfWeek;

    if-eqz v3, :cond_0

    .line 409
    iget-object v3, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->dow:Lorg/threeten/bp/DayOfWeek;

    invoke-static {v3}, Lorg/threeten/bp/temporal/TemporalAdjusters;->nextOrSame(Lorg/threeten/bp/DayOfWeek;)Lorg/threeten/bp/temporal/TemporalAdjuster;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/threeten/bp/LocalDate;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherRule"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 431
    if-ne p1, p0, :cond_1

    .line 444
    :cond_0
    :goto_0
    return v1

    .line 434
    :cond_1
    instance-of v3, p1, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 435
    check-cast v0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;

    .line 436
    .local v0, "other":Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;
    iget-object v3, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->month:Lorg/threeten/bp/Month;

    iget-object v4, v0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->month:Lorg/threeten/bp/Month;

    if-ne v3, v4, :cond_2

    iget-byte v3, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->dom:B

    iget-byte v4, v0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->dom:B

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->dow:Lorg/threeten/bp/DayOfWeek;

    iget-object v4, v0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->dow:Lorg/threeten/bp/DayOfWeek;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->timeDefinition:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    iget-object v4, v0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->timeDefinition:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->time:Lorg/threeten/bp/LocalTime;

    iget-object v4, v0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v3, v4}, Lorg/threeten/bp/LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    iget-boolean v4, v0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->standardOffset:Lorg/threeten/bp/ZoneOffset;

    iget-object v4, v0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->standardOffset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v3, v4}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->offsetBefore:Lorg/threeten/bp/ZoneOffset;

    iget-object v4, v0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->offsetBefore:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v3, v4}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->offsetAfter:Lorg/threeten/bp/ZoneOffset;

    iget-object v4, v0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->offsetAfter:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v3, v4}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;
    :cond_3
    move v1, v2

    .line 444
    goto :goto_0
.end method

.method public getDayOfMonthIndicator()I
    .locals 1

    .prologue
    .line 309
    iget-byte v0, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->dom:B

    return v0
.end method

.method public getDayOfWeek()Lorg/threeten/bp/DayOfWeek;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->dow:Lorg/threeten/bp/DayOfWeek;

    return-object v0
.end method

.method public getLocalTime()Lorg/threeten/bp/LocalTime;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->time:Lorg/threeten/bp/LocalTime;

    return-object v0
.end method

.method public getMonth()Lorg/threeten/bp/Month;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->month:Lorg/threeten/bp/Month;

    return-object v0
.end method

.method public getOffsetAfter()Lorg/threeten/bp/ZoneOffset;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->offsetAfter:Lorg/threeten/bp/ZoneOffset;

    return-object v0
.end method

.method public getOffsetBefore()Lorg/threeten/bp/ZoneOffset;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->offsetBefore:Lorg/threeten/bp/ZoneOffset;

    return-object v0
.end method

.method public getStandardOffset()Lorg/threeten/bp/ZoneOffset;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->standardOffset:Lorg/threeten/bp/ZoneOffset;

    return-object v0
.end method

.method public getTimeDefinition()Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->timeDefinition:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 454
    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v1}, Lorg/threeten/bp/LocalTime;->toSecondOfDay()I

    move-result v2

    iget-boolean v1, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0xf

    iget-object v2, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->month:Lorg/threeten/bp/Month;

    invoke-virtual {v2}, Lorg/threeten/bp/Month;->ordinal()I

    move-result v2

    shl-int/lit8 v2, v2, 0xb

    add-int/2addr v1, v2

    iget-byte v2, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->dom:B

    add-int/lit8 v2, v2, 0x20

    shl-int/lit8 v2, v2, 0x5

    add-int/2addr v2, v1

    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->dow:Lorg/threeten/bp/DayOfWeek;

    if-nez v1, :cond_1

    const/4 v1, 0x7

    :goto_1
    shl-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->timeDefinition:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-virtual {v2}, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->ordinal()I

    move-result v2

    add-int v0, v1, v2

    .line 457
    .local v0, "hash":I
    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->standardOffset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v1, v0

    iget-object v2, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->offsetBefore:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v2}, Lorg/threeten/bp/ZoneOffset;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->offsetAfter:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v2}, Lorg/threeten/bp/ZoneOffset;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    return v1

    .line 454
    .end local v0    # "hash":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->dow:Lorg/threeten/bp/DayOfWeek;

    invoke-virtual {v1}, Lorg/threeten/bp/DayOfWeek;->ordinal()I

    move-result v1

    goto :goto_1
.end method

.method public isMidnightEndOfDay()Z
    .locals 1

    .prologue
    .line 348
    iget-boolean v0, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 470
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "TransitionRule["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->offsetBefore:Lorg/threeten/bp/ZoneOffset;

    iget-object v3, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->offsetAfter:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v1, v3}, Lorg/threeten/bp/ZoneOffset;->compareTo(Lorg/threeten/bp/ZoneOffset;)I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "Gap "

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->offsetBefore:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->offsetAfter:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->dow:Lorg/threeten/bp/DayOfWeek;

    if-eqz v1, :cond_3

    .line 474
    iget-byte v1, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->dom:B

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 475
    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->dow:Lorg/threeten/bp/DayOfWeek;

    invoke-virtual {v1}, Lorg/threeten/bp/DayOfWeek;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on or before last day of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->month:Lorg/threeten/bp/Month;

    invoke-virtual {v2}, Lorg/threeten/bp/Month;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    :goto_1
    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-eqz v1, :cond_4

    const-string v1, "24:00"

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->timeDefinition:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", standard offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->standardOffset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 470
    :cond_0
    const-string v1, "Overlap "

    goto :goto_0

    .line 476
    :cond_1
    iget-byte v1, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->dom:B

    if-gez v1, :cond_2

    .line 477
    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->dow:Lorg/threeten/bp/DayOfWeek;

    invoke-virtual {v1}, Lorg/threeten/bp/DayOfWeek;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on or before last day minus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->dom:B

    neg-int v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->month:Lorg/threeten/bp/Month;

    invoke-virtual {v2}, Lorg/threeten/bp/Month;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 479
    :cond_2
    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->dow:Lorg/threeten/bp/DayOfWeek;

    invoke-virtual {v1}, Lorg/threeten/bp/DayOfWeek;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on or after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->month:Lorg/threeten/bp/Month;

    invoke-virtual {v2}, Lorg/threeten/bp/Month;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->dom:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 482
    :cond_3
    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->month:Lorg/threeten/bp/Month;

    invoke-virtual {v1}, Lorg/threeten/bp/Month;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->dom:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 484
    :cond_4
    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v1}, Lorg/threeten/bp/LocalTime;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 12
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    iget-boolean v10, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-eqz v10, :cond_6

    const v9, 0x15180

    .line 219
    .local v9, "timeSecs":I
    :goto_0
    iget-object v10, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->standardOffset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v10}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v6

    .line 220
    .local v6, "stdOffset":I
    iget-object v10, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->offsetBefore:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v10}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v10

    sub-int v4, v10, v6

    .line 221
    .local v4, "beforeDiff":I
    iget-object v10, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->offsetAfter:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v10}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v10

    sub-int v1, v10, v6

    .line 222
    .local v1, "afterDiff":I
    rem-int/lit16 v10, v9, 0xe10

    if-nez v10, :cond_8

    iget-boolean v10, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-eqz v10, :cond_7

    const/16 v8, 0x18

    .line 223
    .local v8, "timeByte":I
    :goto_1
    rem-int/lit16 v10, v6, 0x384

    if-nez v10, :cond_9

    div-int/lit16 v10, v6, 0x384

    add-int/lit16 v7, v10, 0x80

    .line 224
    .local v7, "stdOffsetByte":I
    :goto_2
    if-eqz v4, :cond_0

    const/16 v10, 0x708

    if-eq v4, v10, :cond_0

    const/16 v10, 0xe10

    if-ne v4, v10, :cond_a

    :cond_0
    div-int/lit16 v3, v4, 0x708

    .line 225
    .local v3, "beforeByte":I
    :goto_3
    if-eqz v1, :cond_1

    const/16 v10, 0x708

    if-eq v1, v10, :cond_1

    const/16 v10, 0xe10

    if-ne v1, v10, :cond_b

    :cond_1
    div-int/lit16 v0, v1, 0x708

    .line 226
    .local v0, "afterByte":I
    :goto_4
    iget-object v10, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->dow:Lorg/threeten/bp/DayOfWeek;

    if-nez v10, :cond_c

    const/4 v5, 0x0

    .line 227
    .local v5, "dowByte":I
    :goto_5
    iget-object v10, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->month:Lorg/threeten/bp/Month;

    invoke-virtual {v10}, Lorg/threeten/bp/Month;->getValue()I

    move-result v10

    shl-int/lit8 v10, v10, 0x1c

    iget-byte v11, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->dom:B

    add-int/lit8 v11, v11, 0x20

    shl-int/lit8 v11, v11, 0x16

    add-int/2addr v10, v11

    shl-int/lit8 v11, v5, 0x13

    add-int/2addr v10, v11

    shl-int/lit8 v11, v8, 0xe

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->timeDefinition:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-virtual {v11}, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->ordinal()I

    move-result v11

    shl-int/lit8 v11, v11, 0xc

    add-int/2addr v10, v11

    shl-int/lit8 v11, v7, 0x4

    add-int/2addr v10, v11

    shl-int/lit8 v11, v3, 0x2

    add-int/2addr v10, v11

    add-int v2, v10, v0

    .line 235
    .local v2, "b":I
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 236
    const/16 v10, 0x1f

    if-ne v8, v10, :cond_2

    .line 237
    invoke-interface {p1, v9}, Ljava/io/DataOutput;->writeInt(I)V

    .line 239
    :cond_2
    const/16 v10, 0xff

    if-ne v7, v10, :cond_3

    .line 240
    invoke-interface {p1, v6}, Ljava/io/DataOutput;->writeInt(I)V

    .line 242
    :cond_3
    const/4 v10, 0x3

    if-ne v3, v10, :cond_4

    .line 243
    iget-object v10, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->offsetBefore:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v10}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v10

    invoke-interface {p1, v10}, Ljava/io/DataOutput;->writeInt(I)V

    .line 245
    :cond_4
    const/4 v10, 0x3

    if-ne v0, v10, :cond_5

    .line 246
    iget-object v10, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->offsetAfter:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v10}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v10

    invoke-interface {p1, v10}, Ljava/io/DataOutput;->writeInt(I)V

    .line 248
    :cond_5
    return-void

    .line 218
    .end local v0    # "afterByte":I
    .end local v1    # "afterDiff":I
    .end local v2    # "b":I
    .end local v3    # "beforeByte":I
    .end local v4    # "beforeDiff":I
    .end local v5    # "dowByte":I
    .end local v6    # "stdOffset":I
    .end local v7    # "stdOffsetByte":I
    .end local v8    # "timeByte":I
    .end local v9    # "timeSecs":I
    :cond_6
    iget-object v10, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v10}, Lorg/threeten/bp/LocalTime;->toSecondOfDay()I

    move-result v9

    goto/16 :goto_0

    .line 222
    .restart local v1    # "afterDiff":I
    .restart local v4    # "beforeDiff":I
    .restart local v6    # "stdOffset":I
    .restart local v9    # "timeSecs":I
    :cond_7
    iget-object v10, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->time:Lorg/threeten/bp/LocalTime;

    invoke-virtual {v10}, Lorg/threeten/bp/LocalTime;->getHour()I

    move-result v8

    goto/16 :goto_1

    :cond_8
    const/16 v8, 0x1f

    goto/16 :goto_1

    .line 223
    .restart local v8    # "timeByte":I
    :cond_9
    const/16 v7, 0xff

    goto/16 :goto_2

    .line 224
    .restart local v7    # "stdOffsetByte":I
    :cond_a
    const/4 v3, 0x3

    goto :goto_3

    .line 225
    .restart local v3    # "beforeByte":I
    :cond_b
    const/4 v0, 0x3

    goto :goto_4

    .line 226
    .restart local v0    # "afterByte":I
    :cond_c
    iget-object v10, p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->dow:Lorg/threeten/bp/DayOfWeek;

    invoke-virtual {v10}, Lorg/threeten/bp/DayOfWeek;->getValue()I

    move-result v5

    goto :goto_5
.end method
