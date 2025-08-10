.class public final Lorg/threeten/bp/LocalTime;
.super Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;
.source "LocalTime.java"

# interfaces
.implements Lorg/threeten/bp/temporal/Temporal;
.implements Lorg/threeten/bp/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/LocalTime$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;",
        "Lorg/threeten/bp/temporal/Temporal;",
        "Lorg/threeten/bp/temporal/TemporalAdjuster;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/threeten/bp/LocalTime;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final FROM:Lorg/threeten/bp/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/TemporalQuery",
            "<",
            "Lorg/threeten/bp/LocalTime;",
            ">;"
        }
    .end annotation
.end field

.field private static final HOURS:[Lorg/threeten/bp/LocalTime;

.field static final HOURS_PER_DAY:I = 0x18

.field public static final MAX:Lorg/threeten/bp/LocalTime;

.field static final MICROS_PER_DAY:J = 0x141dd76000L

.field public static final MIDNIGHT:Lorg/threeten/bp/LocalTime;

.field static final MILLIS_PER_DAY:J = 0x5265c00L

.field public static final MIN:Lorg/threeten/bp/LocalTime;

.field static final MINUTES_PER_DAY:I = 0x5a0

.field static final MINUTES_PER_HOUR:I = 0x3c

.field static final NANOS_PER_DAY:J = 0x4e94914f0000L

.field static final NANOS_PER_HOUR:J = 0x34630b8a000L

.field static final NANOS_PER_MINUTE:J = 0xdf8475800L

.field static final NANOS_PER_SECOND:J = 0x3b9aca00L

.field public static final NOON:Lorg/threeten/bp/LocalTime;

.field static final SECONDS_PER_DAY:I = 0x15180

.field static final SECONDS_PER_HOUR:I = 0xe10

.field static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final serialVersionUID:J = 0x5904a8b626e1a4f1L


# instance fields
.field private final hour:B

.field private final minute:B

.field private final nano:I

.field private final second:B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x3b

    const/4 v3, 0x0

    .line 113
    new-instance v1, Lorg/threeten/bp/LocalTime$1;

    invoke-direct {v1}, Lorg/threeten/bp/LocalTime$1;-><init>()V

    sput-object v1, Lorg/threeten/bp/LocalTime;->FROM:Lorg/threeten/bp/temporal/TemporalQuery;

    .line 122
    const/16 v1, 0x18

    new-array v1, v1, [Lorg/threeten/bp/LocalTime;

    sput-object v1, Lorg/threeten/bp/LocalTime;->HOURS:[Lorg/threeten/bp/LocalTime;

    .line 124
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/threeten/bp/LocalTime;->HOURS:[Lorg/threeten/bp/LocalTime;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 125
    sget-object v1, Lorg/threeten/bp/LocalTime;->HOURS:[Lorg/threeten/bp/LocalTime;

    new-instance v2, Lorg/threeten/bp/LocalTime;

    invoke-direct {v2, v0, v3, v3, v3}, Lorg/threeten/bp/LocalTime;-><init>(IIII)V

    aput-object v2, v1, v0

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_0
    sget-object v1, Lorg/threeten/bp/LocalTime;->HOURS:[Lorg/threeten/bp/LocalTime;

    aget-object v1, v1, v3

    sput-object v1, Lorg/threeten/bp/LocalTime;->MIDNIGHT:Lorg/threeten/bp/LocalTime;

    .line 128
    sget-object v1, Lorg/threeten/bp/LocalTime;->HOURS:[Lorg/threeten/bp/LocalTime;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    sput-object v1, Lorg/threeten/bp/LocalTime;->NOON:Lorg/threeten/bp/LocalTime;

    .line 129
    sget-object v1, Lorg/threeten/bp/LocalTime;->HOURS:[Lorg/threeten/bp/LocalTime;

    aget-object v1, v1, v3

    sput-object v1, Lorg/threeten/bp/LocalTime;->MIN:Lorg/threeten/bp/LocalTime;

    .line 130
    new-instance v1, Lorg/threeten/bp/LocalTime;

    const/16 v2, 0x17

    const v3, 0x3b9ac9ff

    invoke-direct {v1, v2, v4, v4, v3}, Lorg/threeten/bp/LocalTime;-><init>(IIII)V

    sput-object v1, Lorg/threeten/bp/LocalTime;->MAX:Lorg/threeten/bp/LocalTime;

    .line 131
    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 1
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I
    .param p4, "nanoOfSecond"    # I

    .prologue
    .line 467
    invoke-direct {p0}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;-><init>()V

    .line 468
    int-to-byte v0, p1

    iput-byte v0, p0, Lorg/threeten/bp/LocalTime;->hour:B

    .line 469
    int-to-byte v0, p2

    iput-byte v0, p0, Lorg/threeten/bp/LocalTime;->minute:B

    .line 470
    int-to-byte v0, p3

    iput-byte v0, p0, Lorg/threeten/bp/LocalTime;->second:B

    .line 471
    iput p4, p0, Lorg/threeten/bp/LocalTime;->nano:I

    .line 472
    return-void
.end method

.method private static create(IIII)Lorg/threeten/bp/LocalTime;
    .locals 1
    .param p0, "hour"    # I
    .param p1, "minute"    # I
    .param p2, "second"    # I
    .param p3, "nanoOfSecond"    # I

    .prologue
    .line 453
    or-int v0, p1, p2

    or-int/2addr v0, p3

    if-nez v0, :cond_0

    .line 454
    sget-object v0, Lorg/threeten/bp/LocalTime;->HOURS:[Lorg/threeten/bp/LocalTime;

    aget-object v0, v0, p0

    .line 456
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/threeten/bp/LocalTime;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/threeten/bp/LocalTime;-><init>(IIII)V

    goto :goto_0
.end method

.method public static from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalTime;
    .locals 4
    .param p0, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 402
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localTime()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/threeten/bp/temporal/TemporalAccessor;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/LocalTime;

    .line 403
    .local v0, "time":Lorg/threeten/bp/LocalTime;
    if-nez v0, :cond_0

    .line 404
    new-instance v1, Lorg/threeten/bp/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to obtain LocalTime from TemporalAccessor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 407
    :cond_0
    return-object v0
.end method

.method private get0(Lorg/threeten/bp/temporal/TemporalField;)I
    .locals 6
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 623
    sget-object v2, Lorg/threeten/bp/LocalTime$2;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v1}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 640
    new-instance v1, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 624
    :pswitch_0
    iget v0, p0, Lorg/threeten/bp/LocalTime;->nano:I

    .line 638
    :cond_0
    :goto_0
    return v0

    .line 625
    :pswitch_1
    new-instance v1, Lorg/threeten/bp/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field too large for an int: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 626
    :pswitch_2
    iget v1, p0, Lorg/threeten/bp/LocalTime;->nano:I

    div-int/lit16 v0, v1, 0x3e8

    goto :goto_0

    .line 627
    :pswitch_3
    new-instance v1, Lorg/threeten/bp/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field too large for an int: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 628
    :pswitch_4
    iget v1, p0, Lorg/threeten/bp/LocalTime;->nano:I

    const v2, 0xf4240

    div-int v0, v1, v2

    goto :goto_0

    .line 629
    :pswitch_5
    invoke-virtual {p0}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    long-to-int v0, v2

    goto :goto_0

    .line 630
    :pswitch_6
    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->second:B

    goto :goto_0

    .line 631
    :pswitch_7
    invoke-virtual {p0}, Lorg/threeten/bp/LocalTime;->toSecondOfDay()I

    move-result v0

    goto :goto_0

    .line 632
    :pswitch_8
    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->minute:B

    goto :goto_0

    .line 633
    :pswitch_9
    iget-byte v1, p0, Lorg/threeten/bp/LocalTime;->hour:B

    mul-int/lit8 v1, v1, 0x3c

    iget-byte v2, p0, Lorg/threeten/bp/LocalTime;->minute:B

    add-int v0, v1, v2

    goto :goto_0

    .line 634
    :pswitch_a
    iget-byte v1, p0, Lorg/threeten/bp/LocalTime;->hour:B

    rem-int/lit8 v0, v1, 0xc

    goto :goto_0

    .line 635
    :pswitch_b
    iget-byte v1, p0, Lorg/threeten/bp/LocalTime;->hour:B

    rem-int/lit8 v0, v1, 0xc

    .local v0, "ham":I
    rem-int/lit8 v1, v0, 0xc

    if-nez v1, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    .line 636
    .end local v0    # "ham":I
    :pswitch_c
    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->hour:B

    goto :goto_0

    .line 637
    :pswitch_d
    iget-byte v1, p0, Lorg/threeten/bp/LocalTime;->hour:B

    if-nez v1, :cond_1

    const/16 v1, 0x18

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    iget-byte v1, p0, Lorg/threeten/bp/LocalTime;->hour:B

    goto :goto_1

    .line 638
    :pswitch_e
    iget-byte v1, p0, Lorg/threeten/bp/LocalTime;->hour:B

    div-int/lit8 v0, v1, 0xc

    goto :goto_0

    .line 623
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public static now()Lorg/threeten/bp/LocalTime;
    .locals 1

    .prologue
    .line 217
    invoke-static {}, Lorg/threeten/bp/Clock;->systemDefaultZone()Lorg/threeten/bp/Clock;

    move-result-object v0

    invoke-static {v0}, Lorg/threeten/bp/LocalTime;->now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/LocalTime;
    .locals 8
    .param p0, "clock"    # Lorg/threeten/bp/Clock;

    .prologue
    const-wide/32 v6, 0x15180

    .line 247
    const-string v4, "clock"

    invoke-static {p0, v4}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 249
    invoke-virtual {p0}, Lorg/threeten/bp/Clock;->instant()Lorg/threeten/bp/Instant;

    move-result-object v0

    .line 250
    .local v0, "now":Lorg/threeten/bp/Instant;
    invoke-virtual {p0}, Lorg/threeten/bp/Clock;->getZone()Lorg/threeten/bp/ZoneId;

    move-result-object v4

    invoke-virtual {v4}, Lorg/threeten/bp/ZoneId;->getRules()Lorg/threeten/bp/zone/ZoneRules;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/threeten/bp/zone/ZoneRules;->getOffset(Lorg/threeten/bp/Instant;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    .line 251
    .local v1, "offset":Lorg/threeten/bp/ZoneOffset;
    invoke-virtual {v0}, Lorg/threeten/bp/Instant;->getEpochSecond()J

    move-result-wide v4

    rem-long v2, v4, v6

    .line 252
    .local v2, "secsOfDay":J
    invoke-virtual {v1}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v2

    rem-long v2, v4, v6

    .line 253
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 254
    add-long/2addr v2, v6

    .line 256
    :cond_0
    invoke-virtual {v0}, Lorg/threeten/bp/Instant;->getNano()I

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/threeten/bp/LocalTime;->ofSecondOfDay(JI)Lorg/threeten/bp/LocalTime;

    move-result-object v4

    return-object v4
.end method

.method public static now(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/LocalTime;
    .locals 1
    .param p0, "zone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 233
    invoke-static {p0}, Lorg/threeten/bp/Clock;->system(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/Clock;

    move-result-object v0

    invoke-static {v0}, Lorg/threeten/bp/LocalTime;->now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public static of(II)Lorg/threeten/bp/LocalTime;
    .locals 4
    .param p0, "hour"    # I
    .param p1, "minute"    # I

    .prologue
    const/4 v1, 0x0

    .line 273
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 274
    if-nez p1, :cond_0

    .line 275
    sget-object v0, Lorg/threeten/bp/LocalTime;->HOURS:[Lorg/threeten/bp/LocalTime;

    aget-object v0, v0, p0

    .line 278
    :goto_0
    return-object v0

    .line 277
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->MINUTE_OF_HOUR:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 278
    new-instance v0, Lorg/threeten/bp/LocalTime;

    invoke-direct {v0, p0, p1, v1, v1}, Lorg/threeten/bp/LocalTime;-><init>(IIII)V

    goto :goto_0
.end method

.method public static of(III)Lorg/threeten/bp/LocalTime;
    .locals 4
    .param p0, "hour"    # I
    .param p1, "minute"    # I
    .param p2, "second"    # I

    .prologue
    .line 295
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 296
    or-int v0, p1, p2

    if-nez v0, :cond_0

    .line 297
    sget-object v0, Lorg/threeten/bp/LocalTime;->HOURS:[Lorg/threeten/bp/LocalTime;

    aget-object v0, v0, p0

    .line 301
    :goto_0
    return-object v0

    .line 299
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->MINUTE_OF_HOUR:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 300
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->SECOND_OF_MINUTE:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 301
    new-instance v0, Lorg/threeten/bp/LocalTime;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/threeten/bp/LocalTime;-><init>(IIII)V

    goto :goto_0
.end method

.method public static of(IIII)Lorg/threeten/bp/LocalTime;
    .locals 4
    .param p0, "hour"    # I
    .param p1, "minute"    # I
    .param p2, "second"    # I
    .param p3, "nanoOfSecond"    # I

    .prologue
    .line 317
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 318
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->MINUTE_OF_HOUR:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 319
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->SECOND_OF_MINUTE:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 320
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 321
    invoke-static {p0, p1, p2, p3}, Lorg/threeten/bp/LocalTime;->create(IIII)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public static ofNanoOfDay(J)Lorg/threeten/bp/LocalTime;
    .locals 12
    .param p0, "nanoOfDay"    # J

    .prologue
    const-wide v10, 0x34630b8a000L

    const-wide v8, 0xdf8475800L

    const-wide/32 v6, 0x3b9aca00

    .line 374
    sget-object v3, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v3, p0, p1}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 375
    div-long v4, p0, v10

    long-to-int v0, v4

    .line 376
    .local v0, "hours":I
    int-to-long v4, v0

    mul-long/2addr v4, v10

    sub-long/2addr p0, v4

    .line 377
    div-long v4, p0, v8

    long-to-int v1, v4

    .line 378
    .local v1, "minutes":I
    int-to-long v4, v1

    mul-long/2addr v4, v8

    sub-long/2addr p0, v4

    .line 379
    div-long v4, p0, v6

    long-to-int v2, v4

    .line 380
    .local v2, "seconds":I
    int-to-long v4, v2

    mul-long/2addr v4, v6

    sub-long/2addr p0, v4

    .line 381
    long-to-int v3, p0

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/LocalTime;->create(IIII)Lorg/threeten/bp/LocalTime;

    move-result-object v3

    return-object v3
.end method

.method public static ofSecondOfDay(J)Lorg/threeten/bp/LocalTime;
    .locals 4
    .param p0, "secondOfDay"    # J

    .prologue
    .line 335
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->SECOND_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v2, p0, p1}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 336
    const-wide/16 v2, 0xe10

    div-long v2, p0, v2

    long-to-int v0, v2

    .line 337
    .local v0, "hours":I
    mul-int/lit16 v2, v0, 0xe10

    int-to-long v2, v2

    sub-long/2addr p0, v2

    .line 338
    const-wide/16 v2, 0x3c

    div-long v2, p0, v2

    long-to-int v1, v2

    .line 339
    .local v1, "minutes":I
    mul-int/lit8 v2, v1, 0x3c

    int-to-long v2, v2

    sub-long/2addr p0, v2

    .line 340
    long-to-int v2, p0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/LocalTime;->create(IIII)Lorg/threeten/bp/LocalTime;

    move-result-object v2

    return-object v2
.end method

.method static ofSecondOfDay(JI)Lorg/threeten/bp/LocalTime;
    .locals 6
    .param p0, "secondOfDay"    # J
    .param p2, "nanoOfSecond"    # I

    .prologue
    .line 355
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->SECOND_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v2, p0, p1}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 356
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v4, p2

    invoke-virtual {v2, v4, v5}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 357
    const-wide/16 v2, 0xe10

    div-long v2, p0, v2

    long-to-int v0, v2

    .line 358
    .local v0, "hours":I
    mul-int/lit16 v2, v0, 0xe10

    int-to-long v2, v2

    sub-long/2addr p0, v2

    .line 359
    const-wide/16 v2, 0x3c

    div-long v2, p0, v2

    long-to-int v1, v2

    .line 360
    .local v1, "minutes":I
    mul-int/lit8 v2, v1, 0x3c

    int-to-long v2, v2

    sub-long/2addr p0, v2

    .line 361
    long-to-int v2, p0

    invoke-static {v0, v1, v2, p2}, Lorg/threeten/bp/LocalTime;->create(IIII)Lorg/threeten/bp/LocalTime;

    move-result-object v2

    return-object v2
.end method

.method public static parse(Ljava/lang/CharSequence;)Lorg/threeten/bp/LocalTime;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 422
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_LOCAL_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

    invoke-static {p0, v0}, Lorg/threeten/bp/LocalTime;->parse(Ljava/lang/CharSequence;Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/LocalTime;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "formatter"    # Lorg/threeten/bp/format/DateTimeFormatter;

    .prologue
    .line 436
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 437
    sget-object v0, Lorg/threeten/bp/LocalTime;->FROM:Lorg/threeten/bp/temporal/TemporalQuery;

    invoke-virtual {p1, p0, v0}, Lorg/threeten/bp/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/LocalTime;

    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/LocalTime;
    .locals 5
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1546
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 1547
    .local v0, "hour":I
    const/4 v1, 0x0

    .line 1548
    .local v1, "minute":I
    const/4 v3, 0x0

    .line 1549
    .local v3, "second":I
    const/4 v2, 0x0

    .line 1550
    .local v2, "nano":I
    if-gez v0, :cond_0

    .line 1551
    xor-int/lit8 v0, v0, -0x1

    .line 1565
    :goto_0
    invoke-static {v0, v1, v3, v2}, Lorg/threeten/bp/LocalTime;->of(IIII)Lorg/threeten/bp/LocalTime;

    move-result-object v4

    return-object v4

    .line 1553
    :cond_0
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 1554
    if-gez v1, :cond_1

    .line 1555
    xor-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1557
    :cond_1
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v3

    .line 1558
    if-gez v3, :cond_2

    .line 1559
    xor-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1561
    :cond_2
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    goto :goto_0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1520
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1511
    new-instance v0, Lorg/threeten/bp/Ser;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;
    .locals 4
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/Temporal;

    .prologue
    .line 1243
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public atDate(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/LocalDateTime;
    .locals 1
    .param p1, "date"    # Lorg/threeten/bp/LocalDate;

    .prologue
    .line 1319
    invoke-static {p1, p0}, Lorg/threeten/bp/LocalDateTime;->of(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public atOffset(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;
    .locals 1
    .param p1, "offset"    # Lorg/threeten/bp/ZoneOffset;

    .prologue
    .line 1332
    invoke-static {p0, p1}, Lorg/threeten/bp/OffsetTime;->of(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 88
    check-cast p1, Lorg/threeten/bp/LocalTime;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalTime;->compareTo(Lorg/threeten/bp/LocalTime;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/threeten/bp/LocalTime;)I
    .locals 3
    .param p1, "other"    # Lorg/threeten/bp/LocalTime;

    .prologue
    .line 1376
    iget-byte v1, p0, Lorg/threeten/bp/LocalTime;->hour:B

    iget-byte v2, p1, Lorg/threeten/bp/LocalTime;->hour:B

    invoke-static {v1, v2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->compareInts(II)I

    move-result v0

    .line 1377
    .local v0, "cmp":I
    if-nez v0, :cond_0

    .line 1378
    iget-byte v1, p0, Lorg/threeten/bp/LocalTime;->minute:B

    iget-byte v2, p1, Lorg/threeten/bp/LocalTime;->minute:B

    invoke-static {v1, v2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->compareInts(II)I

    move-result v0

    .line 1379
    if-nez v0, :cond_0

    .line 1380
    iget-byte v1, p0, Lorg/threeten/bp/LocalTime;->second:B

    iget-byte v2, p1, Lorg/threeten/bp/LocalTime;->second:B

    invoke-static {v1, v2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->compareInts(II)I

    move-result v0

    .line 1381
    if-nez v0, :cond_0

    .line 1382
    iget v1, p0, Lorg/threeten/bp/LocalTime;->nano:I

    iget v2, p1, Lorg/threeten/bp/LocalTime;->nano:I

    invoke-static {v1, v2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->compareInts(II)I

    move-result v0

    .line 1386
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1430
    if-ne p0, p1, :cond_1

    .line 1438
    :cond_0
    :goto_0
    return v1

    .line 1433
    :cond_1
    instance-of v3, p1, Lorg/threeten/bp/LocalTime;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 1434
    check-cast v0, Lorg/threeten/bp/LocalTime;

    .line 1435
    .local v0, "other":Lorg/threeten/bp/LocalTime;
    iget-byte v3, p0, Lorg/threeten/bp/LocalTime;->hour:B

    iget-byte v4, v0, Lorg/threeten/bp/LocalTime;->hour:B

    if-ne v3, v4, :cond_2

    iget-byte v3, p0, Lorg/threeten/bp/LocalTime;->minute:B

    iget-byte v4, v0, Lorg/threeten/bp/LocalTime;->minute:B

    if-ne v3, v4, :cond_2

    iget-byte v3, p0, Lorg/threeten/bp/LocalTime;->second:B

    iget-byte v4, v0, Lorg/threeten/bp/LocalTime;->second:B

    if-ne v3, v4, :cond_2

    iget v3, p0, Lorg/threeten/bp/LocalTime;->nano:I

    iget v4, v0, Lorg/threeten/bp/LocalTime;->nano:I

    if-eq v3, v4, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lorg/threeten/bp/LocalTime;
    :cond_3
    move v1, v2

    .line 1438
    goto :goto_0
.end method

.method public format(Lorg/threeten/bp/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 1
    .param p1, "formatter"    # Lorg/threeten/bp/format/DateTimeFormatter;

    .prologue
    .line 1505
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1506
    invoke-virtual {p1, p0}, Lorg/threeten/bp/format/DateTimeFormatter;->format(Lorg/threeten/bp/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Lorg/threeten/bp/temporal/TemporalField;)I
    .locals 1
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 580
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_0

    .line 581
    invoke-direct {p0, p1}, Lorg/threeten/bp/LocalTime;->get0(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    .line 583
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    goto :goto_0
.end method

.method public getHour()I
    .locals 1

    .prologue
    .line 650
    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->hour:B

    return v0
.end method

.method public getLong(Lorg/threeten/bp/temporal/TemporalField;)J
    .locals 4
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 610
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_2

    .line 611
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    .line 612
    invoke-virtual {p0}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    .line 619
    :goto_0
    return-wide v0

    .line 614
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->MICRO_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_1

    .line 615
    invoke-virtual {p0}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    goto :goto_0

    .line 617
    :cond_1
    invoke-direct {p0, p1}, Lorg/threeten/bp/LocalTime;->get0(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 619
    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->getFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 659
    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->minute:B

    return v0
.end method

.method public getNano()I
    .locals 1

    .prologue
    .line 677
    iget v0, p0, Lorg/threeten/bp/LocalTime;->nano:I

    return v0
.end method

.method public getSecond()I
    .locals 1

    .prologue
    .line 668
    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->second:B

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 1448
    invoke-virtual {p0}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    .line 1449
    .local v0, "nod":J
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v2, v0

    long-to-int v2, v2

    return v2
.end method

.method public isAfter(Lorg/threeten/bp/LocalTime;)Z
    .locals 1
    .param p1, "other"    # Lorg/threeten/bp/LocalTime;

    .prologue
    .line 1399
    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalTime;->compareTo(Lorg/threeten/bp/LocalTime;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBefore(Lorg/threeten/bp/LocalTime;)Z
    .locals 1
    .param p1, "other"    # Lorg/threeten/bp/LocalTime;

    .prologue
    .line 1412
    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalTime;->compareTo(Lorg/threeten/bp/LocalTime;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z
    .locals 1
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 513
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_0

    .line 514
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->isTimeBased()Z

    move-result v0

    .line 516
    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->isSupportedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupported(Lorg/threeten/bp/temporal/TemporalUnit;)Z
    .locals 1
    .param p1, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 521
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    .line 522
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalUnit;->isTimeBased()Z

    move-result v0

    .line 524
    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalUnit;->isSupportedBy(Lorg/threeten/bp/temporal/Temporal;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalTime;
    .locals 5
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 1117
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Lorg/threeten/bp/LocalTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, p3}, Lorg/threeten/bp/LocalTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Lorg/threeten/bp/LocalTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    goto :goto_0
.end method

.method public minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/LocalTime;
    .locals 1
    .param p1, "amount"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 1097
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAmount;->subtractFrom(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/LocalTime;

    return-object v0
.end method

.method public bridge synthetic minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 88
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/LocalTime;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalTime;->minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public minusHours(J)Lorg/threeten/bp/LocalTime;
    .locals 3
    .param p1, "hoursToSubtract"    # J

    .prologue
    .line 1133
    const-wide/16 v0, 0x18

    rem-long v0, p1, v0

    neg-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/LocalTime;->plusHours(J)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public minusMinutes(J)Lorg/threeten/bp/LocalTime;
    .locals 3
    .param p1, "minutesToSubtract"    # J

    .prologue
    .line 1148
    const-wide/16 v0, 0x5a0

    rem-long v0, p1, v0

    neg-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/LocalTime;->plusMinutes(J)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public minusNanos(J)Lorg/threeten/bp/LocalTime;
    .locals 3
    .param p1, "nanosToSubtract"    # J

    .prologue
    .line 1178
    const-wide v0, 0x4e94914f0000L

    rem-long v0, p1, v0

    neg-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/LocalTime;->plusNanos(J)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public minusSeconds(J)Lorg/threeten/bp/LocalTime;
    .locals 3
    .param p1, "secondsToSubtract"    # J

    .prologue
    .line 1163
    const-wide/32 v0, 0x15180

    rem-long v0, p1, v0

    neg-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/LocalTime;->plusSeconds(J)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalTime;
    .locals 7
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 963
    instance-of v1, p3, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v1, :cond_0

    move-object v0, p3

    .line 964
    check-cast v0, Lorg/threeten/bp/temporal/ChronoUnit;

    .line 965
    .local v0, "f":Lorg/threeten/bp/temporal/ChronoUnit;
    sget-object v1, Lorg/threeten/bp/LocalTime$2;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 974
    new-instance v1, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported unit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 966
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalTime;->plusNanos(J)Lorg/threeten/bp/LocalTime;

    move-result-object v1

    .line 976
    .end local v0    # "f":Lorg/threeten/bp/temporal/ChronoUnit;
    :goto_0
    return-object v1

    .line 967
    .restart local v0    # "f":Lorg/threeten/bp/temporal/ChronoUnit;
    :pswitch_1
    const-wide v2, 0x141dd76000L

    rem-long v2, p1, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lorg/threeten/bp/LocalTime;->plusNanos(J)Lorg/threeten/bp/LocalTime;

    move-result-object v1

    goto :goto_0

    .line 968
    :pswitch_2
    const-wide/32 v2, 0x5265c00

    rem-long v2, p1, v2

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lorg/threeten/bp/LocalTime;->plusNanos(J)Lorg/threeten/bp/LocalTime;

    move-result-object v1

    goto :goto_0

    .line 969
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalTime;->plusSeconds(J)Lorg/threeten/bp/LocalTime;

    move-result-object v1

    goto :goto_0

    .line 970
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalTime;->plusMinutes(J)Lorg/threeten/bp/LocalTime;

    move-result-object v1

    goto :goto_0

    .line 971
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/LocalTime;->plusHours(J)Lorg/threeten/bp/LocalTime;

    move-result-object v1

    goto :goto_0

    .line 972
    :pswitch_6
    const-wide/16 v2, 0x2

    rem-long v2, p1, v2

    const-wide/16 v4, 0xc

    mul-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lorg/threeten/bp/LocalTime;->plusHours(J)Lorg/threeten/bp/LocalTime;

    move-result-object v1

    goto :goto_0

    .line 976
    .end local v0    # "f":Lorg/threeten/bp/temporal/ChronoUnit;
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/TemporalUnit;->addTo(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/LocalTime;

    goto :goto_0

    .line 965
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/LocalTime;
    .locals 1
    .param p1, "amount"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 943
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAmount;->addTo(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/LocalTime;

    return-object v0
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 88
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/LocalTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalTime;->plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public plusHours(J)Lorg/threeten/bp/LocalTime;
    .locals 5
    .param p1, "hoursToAdd"    # J

    .prologue
    .line 992
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    .line 996
    .end local p0    # "this":Lorg/threeten/bp/LocalTime;
    :goto_0
    return-object p0

    .line 995
    .restart local p0    # "this":Lorg/threeten/bp/LocalTime;
    :cond_0
    const-wide/16 v2, 0x18

    rem-long v2, p1, v2

    long-to-int v1, v2

    iget-byte v2, p0, Lorg/threeten/bp/LocalTime;->hour:B

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x18

    rem-int/lit8 v0, v1, 0x18

    .line 996
    .local v0, "newHour":I
    iget-byte v1, p0, Lorg/threeten/bp/LocalTime;->minute:B

    iget-byte v2, p0, Lorg/threeten/bp/LocalTime;->second:B

    iget v3, p0, Lorg/threeten/bp/LocalTime;->nano:I

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/LocalTime;->create(IIII)Lorg/threeten/bp/LocalTime;

    move-result-object p0

    goto :goto_0
.end method

.method public plusMinutes(J)Lorg/threeten/bp/LocalTime;
    .locals 7
    .param p1, "minutesToAdd"    # J

    .prologue
    .line 1011
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-nez v4, :cond_1

    .line 1021
    .end local p0    # "this":Lorg/threeten/bp/LocalTime;
    :cond_0
    :goto_0
    return-object p0

    .line 1014
    .restart local p0    # "this":Lorg/threeten/bp/LocalTime;
    :cond_1
    iget-byte v4, p0, Lorg/threeten/bp/LocalTime;->hour:B

    mul-int/lit8 v4, v4, 0x3c

    iget-byte v5, p0, Lorg/threeten/bp/LocalTime;->minute:B

    add-int v0, v4, v5

    .line 1015
    .local v0, "mofd":I
    const-wide/16 v4, 0x5a0

    rem-long v4, p1, v4

    long-to-int v4, v4

    add-int/2addr v4, v0

    add-int/lit16 v4, v4, 0x5a0

    rem-int/lit16 v3, v4, 0x5a0

    .line 1016
    .local v3, "newMofd":I
    if-eq v0, v3, :cond_0

    .line 1019
    div-int/lit8 v1, v3, 0x3c

    .line 1020
    .local v1, "newHour":I
    rem-int/lit8 v2, v3, 0x3c

    .line 1021
    .local v2, "newMinute":I
    iget-byte v4, p0, Lorg/threeten/bp/LocalTime;->second:B

    iget v5, p0, Lorg/threeten/bp/LocalTime;->nano:I

    invoke-static {v1, v2, v4, v5}, Lorg/threeten/bp/LocalTime;->create(IIII)Lorg/threeten/bp/LocalTime;

    move-result-object p0

    goto :goto_0
.end method

.method public plusNanos(J)Lorg/threeten/bp/LocalTime;
    .locals 13
    .param p1, "nanosToAdd"    # J

    .prologue
    .line 1063
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-nez v8, :cond_1

    .line 1075
    .end local p0    # "this":Lorg/threeten/bp/LocalTime;
    :cond_0
    :goto_0
    return-object p0

    .line 1066
    .restart local p0    # "this":Lorg/threeten/bp/LocalTime;
    :cond_1
    invoke-virtual {p0}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v6

    .line 1067
    .local v6, "nofd":J
    const-wide v8, 0x4e94914f0000L

    rem-long v8, p1, v8

    add-long/2addr v8, v6

    const-wide v10, 0x4e94914f0000L

    add-long/2addr v8, v10

    const-wide v10, 0x4e94914f0000L

    rem-long v4, v8, v10

    .line 1068
    .local v4, "newNofd":J
    cmp-long v8, v6, v4

    if-eqz v8, :cond_0

    .line 1071
    const-wide v8, 0x34630b8a000L

    div-long v8, v4, v8

    long-to-int v0, v8

    .line 1072
    .local v0, "newHour":I
    const-wide v8, 0xdf8475800L

    div-long v8, v4, v8

    const-wide/16 v10, 0x3c

    rem-long/2addr v8, v10

    long-to-int v1, v8

    .line 1073
    .local v1, "newMinute":I
    const-wide/32 v8, 0x3b9aca00

    div-long v8, v4, v8

    const-wide/16 v10, 0x3c

    rem-long/2addr v8, v10

    long-to-int v3, v8

    .line 1074
    .local v3, "newSecond":I
    const-wide/32 v8, 0x3b9aca00

    rem-long v8, v4, v8

    long-to-int v2, v8

    .line 1075
    .local v2, "newNano":I
    invoke-static {v0, v1, v3, v2}, Lorg/threeten/bp/LocalTime;->create(IIII)Lorg/threeten/bp/LocalTime;

    move-result-object p0

    goto :goto_0
.end method

.method public plusSeconds(J)Lorg/threeten/bp/LocalTime;
    .locals 9
    .param p1, "secondstoAdd"    # J

    .prologue
    const v8, 0x15180

    .line 1036
    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-nez v5, :cond_1

    .line 1048
    .end local p0    # "this":Lorg/threeten/bp/LocalTime;
    :cond_0
    :goto_0
    return-object p0

    .line 1039
    .restart local p0    # "this":Lorg/threeten/bp/LocalTime;
    :cond_1
    iget-byte v5, p0, Lorg/threeten/bp/LocalTime;->hour:B

    mul-int/lit16 v5, v5, 0xe10

    iget-byte v6, p0, Lorg/threeten/bp/LocalTime;->minute:B

    mul-int/lit8 v6, v6, 0x3c

    add-int/2addr v5, v6

    iget-byte v6, p0, Lorg/threeten/bp/LocalTime;->second:B

    add-int v4, v5, v6

    .line 1041
    .local v4, "sofd":I
    const-wide/32 v6, 0x15180

    rem-long v6, p1, v6

    long-to-int v5, v6

    add-int/2addr v5, v4

    add-int/2addr v5, v8

    rem-int v3, v5, v8

    .line 1042
    .local v3, "newSofd":I
    if-eq v4, v3, :cond_0

    .line 1045
    div-int/lit16 v0, v3, 0xe10

    .line 1046
    .local v0, "newHour":I
    div-int/lit8 v5, v3, 0x3c

    rem-int/lit8 v1, v5, 0x3c

    .line 1047
    .local v1, "newMinute":I
    rem-int/lit8 v2, v3, 0x3c

    .line 1048
    .local v2, "newSecond":I
    iget v5, p0, Lorg/threeten/bp/LocalTime;->nano:I

    invoke-static {v0, v1, v2, v5}, Lorg/threeten/bp/LocalTime;->create(IIII)Lorg/threeten/bp/LocalTime;

    move-result-object p0

    goto :goto_0
.end method

.method public query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/threeten/bp/temporal/TemporalQuery",
            "<TR;>;)TR;"
        }
    .end annotation

    .prologue
    .line 1203
    .local p1, "query":Lorg/threeten/bp/temporal/TemporalQuery;, "Lorg/threeten/bp/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->precision()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1204
    sget-object p0, Lorg/threeten/bp/temporal/ChronoUnit;->NANOS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 1214
    .end local p0    # "this":Lorg/threeten/bp/LocalTime;
    :cond_0
    :goto_0
    return-object p0

    .line 1205
    .restart local p0    # "this":Lorg/threeten/bp/LocalTime;
    :cond_1
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localTime()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 1209
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->chronology()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zoneId()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zone()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->offset()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localDate()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 1212
    :cond_2
    const/4 p0, 0x0

    goto :goto_0

    .line 1214
    :cond_3
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalQuery;->queryFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0
.end method

.method public range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 1
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 551
    invoke-super {p0, p1}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public toNanoOfDay()J
    .locals 6

    .prologue
    .line 1356
    iget-byte v2, p0, Lorg/threeten/bp/LocalTime;->hour:B

    int-to-long v2, v2

    const-wide v4, 0x34630b8a000L

    mul-long v0, v2, v4

    .line 1357
    .local v0, "total":J
    iget-byte v2, p0, Lorg/threeten/bp/LocalTime;->minute:B

    int-to-long v2, v2

    const-wide v4, 0xdf8475800L

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1358
    iget-byte v2, p0, Lorg/threeten/bp/LocalTime;->second:B

    int-to-long v2, v2

    const-wide/32 v4, 0x3b9aca00

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1359
    iget v2, p0, Lorg/threeten/bp/LocalTime;->nano:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 1360
    return-wide v0
.end method

.method public toSecondOfDay()I
    .locals 2

    .prologue
    .line 1343
    iget-byte v1, p0, Lorg/threeten/bp/LocalTime;->hour:B

    mul-int/lit16 v0, v1, 0xe10

    .line 1344
    .local v0, "total":I
    iget-byte v1, p0, Lorg/threeten/bp/LocalTime;->minute:B

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    .line 1345
    iget-byte v1, p0, Lorg/threeten/bp/LocalTime;->second:B

    add-int/2addr v0, v1

    .line 1346
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    const v9, 0xf4240

    const/16 v8, 0xa

    const/4 v7, 0x1

    .line 1471
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x12

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1472
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-byte v1, p0, Lorg/threeten/bp/LocalTime;->hour:B

    .line 1473
    .local v1, "hourValue":I
    iget-byte v2, p0, Lorg/threeten/bp/LocalTime;->minute:B

    .line 1474
    .local v2, "minuteValue":I
    iget-byte v4, p0, Lorg/threeten/bp/LocalTime;->second:B

    .line 1475
    .local v4, "secondValue":I
    iget v3, p0, Lorg/threeten/bp/LocalTime;->nano:I

    .line 1476
    .local v3, "nanoValue":I
    if-ge v1, v8, :cond_2

    const-string v5, "0"

    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ge v2, v8, :cond_3

    const-string v5, ":0"

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1478
    if-gtz v4, :cond_0

    if-lez v3, :cond_1

    .line 1479
    :cond_0
    if-ge v4, v8, :cond_4

    const-string v5, ":0"

    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1480
    if-lez v3, :cond_1

    .line 1481
    const/16 v5, 0x2e

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1482
    rem-int v5, v3, v9

    if-nez v5, :cond_5

    .line 1483
    div-int v5, v3, v9

    add-int/lit16 v5, v5, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1491
    :cond_1
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1476
    :cond_2
    const-string v5, ""

    goto :goto_0

    :cond_3
    const-string v5, ":"

    goto :goto_1

    .line 1479
    :cond_4
    const-string v5, ":"

    goto :goto_2

    .line 1484
    :cond_5
    rem-int/lit16 v5, v3, 0x3e8

    if-nez v5, :cond_6

    .line 1485
    div-int/lit16 v5, v3, 0x3e8

    add-int/2addr v5, v9

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1487
    :cond_6
    const v5, 0x3b9aca00

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method public truncatedTo(Lorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalTime;
    .locals 10
    .param p1, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 909
    sget-object v5, Lorg/threeten/bp/temporal/ChronoUnit;->NANOS:Lorg/threeten/bp/temporal/ChronoUnit;

    if-ne p1, v5, :cond_0

    .line 921
    .end local p0    # "this":Lorg/threeten/bp/LocalTime;
    :goto_0
    return-object p0

    .line 912
    .restart local p0    # "this":Lorg/threeten/bp/LocalTime;
    :cond_0
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalUnit;->getDuration()Lorg/threeten/bp/Duration;

    move-result-object v4

    .line 913
    .local v4, "unitDur":Lorg/threeten/bp/Duration;
    invoke-virtual {v4}, Lorg/threeten/bp/Duration;->getSeconds()J

    move-result-wide v6

    const-wide/32 v8, 0x15180

    cmp-long v5, v6, v8

    if-lez v5, :cond_1

    .line 914
    new-instance v5, Lorg/threeten/bp/DateTimeException;

    const-string v6, "Unit is too large to be used for truncation"

    invoke-direct {v5, v6}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 916
    :cond_1
    invoke-virtual {v4}, Lorg/threeten/bp/Duration;->toNanos()J

    move-result-wide v0

    .line 917
    .local v0, "dur":J
    const-wide v6, 0x4e94914f0000L

    rem-long/2addr v6, v0

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    .line 918
    new-instance v5, Lorg/threeten/bp/DateTimeException;

    const-string v6, "Unit must divide into a standard day without remainder"

    invoke-direct {v5, v6}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 920
    :cond_2
    invoke-virtual {p0}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    .line 921
    .local v2, "nod":J
    div-long v6, v2, v0

    mul-long/2addr v6, v0

    invoke-static {v6, v7}, Lorg/threeten/bp/LocalTime;->ofNanoOfDay(J)Lorg/threeten/bp/LocalTime;

    move-result-object p0

    goto :goto_0
.end method

.method public until(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/TemporalUnit;)J
    .locals 8
    .param p1, "endExclusive"    # Lorg/threeten/bp/temporal/Temporal;
    .param p2, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 1291
    invoke-static {p1}, Lorg/threeten/bp/LocalTime;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    .line 1292
    .local v0, "end":Lorg/threeten/bp/LocalTime;
    instance-of v1, p2, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v1, :cond_0

    .line 1293
    invoke-virtual {v0}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v4

    invoke-virtual {p0}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 1294
    .local v2, "nanosUntil":J
    sget-object v4, Lorg/threeten/bp/LocalTime$2;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    move-object v1, p2

    check-cast v1, Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v1}, Lorg/threeten/bp/temporal/ChronoUnit;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_0

    .line 1303
    new-instance v1, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported unit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1296
    :pswitch_0
    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 1305
    .end local v2    # "nanosUntil":J
    :goto_0
    :pswitch_1
    return-wide v2

    .line 1297
    .restart local v2    # "nanosUntil":J
    :pswitch_2
    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    goto :goto_0

    .line 1298
    :pswitch_3
    const-wide/32 v4, 0x3b9aca00

    div-long/2addr v2, v4

    goto :goto_0

    .line 1299
    :pswitch_4
    const-wide v4, 0xdf8475800L

    div-long/2addr v2, v4

    goto :goto_0

    .line 1300
    :pswitch_5
    const-wide v4, 0x34630b8a000L

    div-long/2addr v2, v4

    goto :goto_0

    .line 1301
    :pswitch_6
    const-wide v4, 0x274a48a78000L

    div-long/2addr v2, v4

    goto :goto_0

    .line 1305
    .end local v2    # "nanosUntil":J
    :cond_0
    invoke-interface {p2, p0, v0}, Lorg/threeten/bp/temporal/TemporalUnit;->between(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/Temporal;)J

    move-result-wide v2

    goto :goto_0

    .line 1294
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/LocalTime;
    .locals 1
    .param p1, "adjuster"    # Lorg/threeten/bp/temporal/TemporalAdjuster;

    .prologue
    .line 705
    instance-of v0, p1, Lorg/threeten/bp/LocalTime;

    if-eqz v0, :cond_0

    .line 706
    check-cast p1, Lorg/threeten/bp/LocalTime;

    .line 708
    .end local p1    # "adjuster":Lorg/threeten/bp/temporal/TemporalAdjuster;
    :goto_0
    return-object p1

    .restart local p1    # "adjuster":Lorg/threeten/bp/temporal/TemporalAdjuster;
    :cond_0
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAdjuster;->adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/LocalTime;

    move-object p1, v0

    goto :goto_0
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/LocalTime;
    .locals 8
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "newValue"    # J

    .prologue
    const-wide/16 v6, 0xc

    const-wide/16 v2, 0x0

    .line 794
    instance-of v1, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 795
    check-cast v0, Lorg/threeten/bp/temporal/ChronoField;

    .line 796
    .local v0, "f":Lorg/threeten/bp/temporal/ChronoField;
    invoke-virtual {v0, p2, p3}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 797
    sget-object v1, Lorg/threeten/bp/LocalTime$2;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    .line 814
    new-instance v1, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 798
    :pswitch_0
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Lorg/threeten/bp/LocalTime;->withNano(I)Lorg/threeten/bp/LocalTime;

    move-result-object v1

    .line 816
    .end local v0    # "f":Lorg/threeten/bp/temporal/ChronoField;
    .end local p2    # "newValue":J
    :goto_0
    return-object v1

    .line 799
    .restart local v0    # "f":Lorg/threeten/bp/temporal/ChronoField;
    .restart local p2    # "newValue":J
    :pswitch_1
    invoke-static {p2, p3}, Lorg/threeten/bp/LocalTime;->ofNanoOfDay(J)Lorg/threeten/bp/LocalTime;

    move-result-object v1

    goto :goto_0

    .line 800
    :pswitch_2
    long-to-int v1, p2

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {p0, v1}, Lorg/threeten/bp/LocalTime;->withNano(I)Lorg/threeten/bp/LocalTime;

    move-result-object v1

    goto :goto_0

    .line 801
    :pswitch_3
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p2

    invoke-static {v2, v3}, Lorg/threeten/bp/LocalTime;->ofNanoOfDay(J)Lorg/threeten/bp/LocalTime;

    move-result-object v1

    goto :goto_0

    .line 802
    :pswitch_4
    long-to-int v1, p2

    const v2, 0xf4240

    mul-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/threeten/bp/LocalTime;->withNano(I)Lorg/threeten/bp/LocalTime;

    move-result-object v1

    goto :goto_0

    .line 803
    :pswitch_5
    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p2

    invoke-static {v2, v3}, Lorg/threeten/bp/LocalTime;->ofNanoOfDay(J)Lorg/threeten/bp/LocalTime;

    move-result-object v1

    goto :goto_0

    .line 804
    :pswitch_6
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Lorg/threeten/bp/LocalTime;->withSecond(I)Lorg/threeten/bp/LocalTime;

    move-result-object v1

    goto :goto_0

    .line 805
    :pswitch_7
    invoke-virtual {p0}, Lorg/threeten/bp/LocalTime;->toSecondOfDay()I

    move-result v1

    int-to-long v2, v1

    sub-long v2, p2, v2

    invoke-virtual {p0, v2, v3}, Lorg/threeten/bp/LocalTime;->plusSeconds(J)Lorg/threeten/bp/LocalTime;

    move-result-object v1

    goto :goto_0

    .line 806
    :pswitch_8
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Lorg/threeten/bp/LocalTime;->withMinute(I)Lorg/threeten/bp/LocalTime;

    move-result-object v1

    goto :goto_0

    .line 807
    :pswitch_9
    iget-byte v1, p0, Lorg/threeten/bp/LocalTime;->hour:B

    mul-int/lit8 v1, v1, 0x3c

    iget-byte v2, p0, Lorg/threeten/bp/LocalTime;->minute:B

    add-int/2addr v1, v2

    int-to-long v2, v1

    sub-long v2, p2, v2

    invoke-virtual {p0, v2, v3}, Lorg/threeten/bp/LocalTime;->plusMinutes(J)Lorg/threeten/bp/LocalTime;

    move-result-object v1

    goto :goto_0

    .line 808
    :pswitch_a
    iget-byte v1, p0, Lorg/threeten/bp/LocalTime;->hour:B

    rem-int/lit8 v1, v1, 0xc

    int-to-long v2, v1

    sub-long v2, p2, v2

    invoke-virtual {p0, v2, v3}, Lorg/threeten/bp/LocalTime;->plusHours(J)Lorg/threeten/bp/LocalTime;

    move-result-object v1

    goto :goto_0

    .line 809
    :pswitch_b
    cmp-long v1, p2, v6

    if-nez v1, :cond_0

    move-wide p2, v2

    .end local p2    # "newValue":J
    :cond_0
    iget-byte v1, p0, Lorg/threeten/bp/LocalTime;->hour:B

    rem-int/lit8 v1, v1, 0xc

    int-to-long v2, v1

    sub-long v2, p2, v2

    invoke-virtual {p0, v2, v3}, Lorg/threeten/bp/LocalTime;->plusHours(J)Lorg/threeten/bp/LocalTime;

    move-result-object v1

    goto :goto_0

    .line 810
    .restart local p2    # "newValue":J
    :pswitch_c
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Lorg/threeten/bp/LocalTime;->withHour(I)Lorg/threeten/bp/LocalTime;

    move-result-object v1

    goto :goto_0

    .line 811
    :pswitch_d
    const-wide/16 v4, 0x18

    cmp-long v1, p2, v4

    if-nez v1, :cond_1

    :goto_1
    long-to-int v1, v2

    invoke-virtual {p0, v1}, Lorg/threeten/bp/LocalTime;->withHour(I)Lorg/threeten/bp/LocalTime;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-wide v2, p2

    goto :goto_1

    .line 812
    :pswitch_e
    iget-byte v1, p0, Lorg/threeten/bp/LocalTime;->hour:B

    div-int/lit8 v1, v1, 0xc

    int-to-long v2, v1

    sub-long v2, p2, v2

    mul-long/2addr v2, v6

    invoke-virtual {p0, v2, v3}, Lorg/threeten/bp/LocalTime;->plusHours(J)Lorg/threeten/bp/LocalTime;

    move-result-object v1

    goto/16 :goto_0

    .line 816
    .end local v0    # "f":Lorg/threeten/bp/temporal/ChronoField;
    :cond_2
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/TemporalField;->adjustInto(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/LocalTime;

    goto/16 :goto_0

    .line 797
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAdjuster;

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalTime;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;
    .locals 2
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "x1"    # J

    .prologue
    .line 88
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/LocalTime;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public withHour(I)Lorg/threeten/bp/LocalTime;
    .locals 4
    .param p1, "hour"    # I

    .prologue
    .line 830
    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->hour:B

    if-ne v0, p1, :cond_0

    .line 834
    .end local p0    # "this":Lorg/threeten/bp/LocalTime;
    :goto_0
    return-object p0

    .line 833
    .restart local p0    # "this":Lorg/threeten/bp/LocalTime;
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->HOUR_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 834
    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->minute:B

    iget-byte v1, p0, Lorg/threeten/bp/LocalTime;->second:B

    iget v2, p0, Lorg/threeten/bp/LocalTime;->nano:I

    invoke-static {p1, v0, v1, v2}, Lorg/threeten/bp/LocalTime;->create(IIII)Lorg/threeten/bp/LocalTime;

    move-result-object p0

    goto :goto_0
.end method

.method public withMinute(I)Lorg/threeten/bp/LocalTime;
    .locals 4
    .param p1, "minute"    # I

    .prologue
    .line 847
    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->minute:B

    if-ne v0, p1, :cond_0

    .line 851
    .end local p0    # "this":Lorg/threeten/bp/LocalTime;
    :goto_0
    return-object p0

    .line 850
    .restart local p0    # "this":Lorg/threeten/bp/LocalTime;
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->MINUTE_OF_HOUR:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 851
    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->hour:B

    iget-byte v1, p0, Lorg/threeten/bp/LocalTime;->second:B

    iget v2, p0, Lorg/threeten/bp/LocalTime;->nano:I

    invoke-static {v0, p1, v1, v2}, Lorg/threeten/bp/LocalTime;->create(IIII)Lorg/threeten/bp/LocalTime;

    move-result-object p0

    goto :goto_0
.end method

.method public withNano(I)Lorg/threeten/bp/LocalTime;
    .locals 4
    .param p1, "nanoOfSecond"    # I

    .prologue
    .line 881
    iget v0, p0, Lorg/threeten/bp/LocalTime;->nano:I

    if-ne v0, p1, :cond_0

    .line 885
    .end local p0    # "this":Lorg/threeten/bp/LocalTime;
    :goto_0
    return-object p0

    .line 884
    .restart local p0    # "this":Lorg/threeten/bp/LocalTime;
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 885
    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->hour:B

    iget-byte v1, p0, Lorg/threeten/bp/LocalTime;->minute:B

    iget-byte v2, p0, Lorg/threeten/bp/LocalTime;->second:B

    invoke-static {v0, v1, v2, p1}, Lorg/threeten/bp/LocalTime;->create(IIII)Lorg/threeten/bp/LocalTime;

    move-result-object p0

    goto :goto_0
.end method

.method public withSecond(I)Lorg/threeten/bp/LocalTime;
    .locals 4
    .param p1, "second"    # I

    .prologue
    .line 864
    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->second:B

    if-ne v0, p1, :cond_0

    .line 868
    .end local p0    # "this":Lorg/threeten/bp/LocalTime;
    :goto_0
    return-object p0

    .line 867
    .restart local p0    # "this":Lorg/threeten/bp/LocalTime;
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->SECOND_OF_MINUTE:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 868
    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->hour:B

    iget-byte v1, p0, Lorg/threeten/bp/LocalTime;->minute:B

    iget v2, p0, Lorg/threeten/bp/LocalTime;->nano:I

    invoke-static {v0, v1, p1, v2}, Lorg/threeten/bp/LocalTime;->create(IIII)Lorg/threeten/bp/LocalTime;

    move-result-object p0

    goto :goto_0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1524
    iget v0, p0, Lorg/threeten/bp/LocalTime;->nano:I

    if-nez v0, :cond_2

    .line 1525
    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->second:B

    if-nez v0, :cond_1

    .line 1526
    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->minute:B

    if-nez v0, :cond_0

    .line 1527
    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->hour:B

    xor-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1543
    :goto_0
    return-void

    .line 1529
    :cond_0
    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->hour:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1530
    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->minute:B

    xor-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0

    .line 1533
    :cond_1
    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->hour:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1534
    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->minute:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1535
    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->second:B

    xor-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0

    .line 1538
    :cond_2
    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->hour:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1539
    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->minute:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1540
    iget-byte v0, p0, Lorg/threeten/bp/LocalTime;->second:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1541
    iget v0, p0, Lorg/threeten/bp/LocalTime;->nano:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_0
.end method
