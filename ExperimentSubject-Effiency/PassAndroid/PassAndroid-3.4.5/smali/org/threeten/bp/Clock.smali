.class public abstract Lorg/threeten/bp/Clock;
.super Ljava/lang/Object;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/Clock$TickClock;,
        Lorg/threeten/bp/Clock$OffsetClock;,
        Lorg/threeten/bp/Clock$FixedClock;,
        Lorg/threeten/bp/Clock$SystemClock;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    return-void
.end method

.method public static fixed(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/Clock;
    .locals 1
    .param p0, "fixedInstant"    # Lorg/threeten/bp/Instant;
    .param p1, "zone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 274
    const-string v0, "fixedInstant"

    invoke-static {p0, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 275
    const-string v0, "zone"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 276
    new-instance v0, Lorg/threeten/bp/Clock$FixedClock;

    invoke-direct {v0, p0, p1}, Lorg/threeten/bp/Clock$FixedClock;-><init>(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)V

    return-object v0
.end method

.method public static offset(Lorg/threeten/bp/Clock;Lorg/threeten/bp/Duration;)Lorg/threeten/bp/Clock;
    .locals 1
    .param p0, "baseClock"    # Lorg/threeten/bp/Clock;
    .param p1, "offsetDuration"    # Lorg/threeten/bp/Duration;

    .prologue
    .line 300
    const-string v0, "baseClock"

    invoke-static {p0, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 301
    const-string v0, "offsetDuration"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lorg/threeten/bp/Duration;->ZERO:Lorg/threeten/bp/Duration;

    invoke-virtual {p1, v0}, Lorg/threeten/bp/Duration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    .end local p0    # "baseClock":Lorg/threeten/bp/Clock;
    :goto_0
    return-object p0

    .restart local p0    # "baseClock":Lorg/threeten/bp/Clock;
    :cond_0
    new-instance v0, Lorg/threeten/bp/Clock$OffsetClock;

    invoke-direct {v0, p0, p1}, Lorg/threeten/bp/Clock$OffsetClock;-><init>(Lorg/threeten/bp/Clock;Lorg/threeten/bp/Duration;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static system(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/Clock;
    .locals 1
    .param p0, "zone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 156
    const-string v0, "zone"

    invoke-static {p0, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 157
    new-instance v0, Lorg/threeten/bp/Clock$SystemClock;

    invoke-direct {v0, p0}, Lorg/threeten/bp/Clock$SystemClock;-><init>(Lorg/threeten/bp/ZoneId;)V

    return-object v0
.end method

.method public static systemDefaultZone()Lorg/threeten/bp/Clock;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Lorg/threeten/bp/Clock$SystemClock;

    invoke-static {}, Lorg/threeten/bp/ZoneId;->systemDefault()Lorg/threeten/bp/ZoneId;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/Clock$SystemClock;-><init>(Lorg/threeten/bp/ZoneId;)V

    return-object v0
.end method

.method public static systemUTC()Lorg/threeten/bp/Clock;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Lorg/threeten/bp/Clock$SystemClock;

    sget-object v1, Lorg/threeten/bp/ZoneOffset;->UTC:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {v0, v1}, Lorg/threeten/bp/Clock$SystemClock;-><init>(Lorg/threeten/bp/ZoneId;)V

    return-object v0
.end method

.method public static tick(Lorg/threeten/bp/Clock;Lorg/threeten/bp/Duration;)Lorg/threeten/bp/Clock;
    .locals 6
    .param p0, "baseClock"    # Lorg/threeten/bp/Clock;
    .param p1, "tickDuration"    # Lorg/threeten/bp/Duration;

    .prologue
    const-wide/16 v4, 0x0

    .line 239
    const-string v2, "baseClock"

    invoke-static {p0, v2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 240
    const-string v2, "tickDuration"

    invoke-static {p1, v2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 241
    invoke-virtual {p1}, Lorg/threeten/bp/Duration;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Tick duration must not be negative"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 244
    :cond_0
    invoke-virtual {p1}, Lorg/threeten/bp/Duration;->toNanos()J

    move-result-wide v0

    .line 245
    .local v0, "tickNanos":J
    const-wide/32 v2, 0xf4240

    rem-long v2, v0, v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 252
    :cond_1
    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3

    .line 255
    .end local p0    # "baseClock":Lorg/threeten/bp/Clock;
    :goto_0
    return-object p0

    .line 247
    .restart local p0    # "baseClock":Lorg/threeten/bp/Clock;
    :cond_2
    const-wide/32 v2, 0x3b9aca00

    rem-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 250
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid tick duration"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 255
    :cond_3
    new-instance v2, Lorg/threeten/bp/Clock$TickClock;

    invoke-direct {v2, p0, v0, v1}, Lorg/threeten/bp/Clock$TickClock;-><init>(Lorg/threeten/bp/Clock;J)V

    move-object p0, v2

    goto :goto_0
.end method

.method public static tickMinutes(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/Clock;
    .locals 4
    .param p0, "zone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 204
    new-instance v0, Lorg/threeten/bp/Clock$TickClock;

    invoke-static {p0}, Lorg/threeten/bp/Clock;->system(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/Clock;

    move-result-object v1

    const-wide v2, 0xdf8475800L

    invoke-direct {v0, v1, v2, v3}, Lorg/threeten/bp/Clock$TickClock;-><init>(Lorg/threeten/bp/Clock;J)V

    return-object v0
.end method

.method public static tickSeconds(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/Clock;
    .locals 4
    .param p0, "zone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 181
    new-instance v0, Lorg/threeten/bp/Clock$TickClock;

    invoke-static {p0}, Lorg/threeten/bp/Clock;->system(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/Clock;

    move-result-object v1

    const-wide/32 v2, 0x3b9aca00

    invoke-direct {v0, v1, v2, v3}, Lorg/threeten/bp/Clock$TickClock;-><init>(Lorg/threeten/bp/Clock;J)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 381
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract getZone()Lorg/threeten/bp/ZoneId;
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 391
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public abstract instant()Lorg/threeten/bp/Instant;
.end method

.method public millis()J
    .locals 2

    .prologue
    .line 357
    invoke-virtual {p0}, Lorg/threeten/bp/Clock;->instant()Lorg/threeten/bp/Instant;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/Instant;->toEpochMilli()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract withZone(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/Clock;
.end method
