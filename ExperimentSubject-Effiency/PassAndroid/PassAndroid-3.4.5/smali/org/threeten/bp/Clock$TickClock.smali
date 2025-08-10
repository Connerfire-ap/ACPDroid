.class final Lorg/threeten/bp/Clock$TickClock;
.super Lorg/threeten/bp/Clock;
.source "Clock.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TickClock"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5a4531089f29d952L


# instance fields
.field private final baseClock:Lorg/threeten/bp/Clock;

.field private final tickNanos:J


# direct methods
.method constructor <init>(Lorg/threeten/bp/Clock;J)V
    .locals 0
    .param p1, "baseClock"    # Lorg/threeten/bp/Clock;
    .param p2, "tickNanos"    # J

    .prologue
    .line 552
    invoke-direct {p0}, Lorg/threeten/bp/Clock;-><init>()V

    .line 553
    iput-object p1, p0, Lorg/threeten/bp/Clock$TickClock;->baseClock:Lorg/threeten/bp/Clock;

    .line 554
    iput-wide p2, p0, Lorg/threeten/bp/Clock$TickClock;->tickNanos:J

    .line 555
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 585
    instance-of v2, p1, Lorg/threeten/bp/Clock$TickClock;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 586
    check-cast v0, Lorg/threeten/bp/Clock$TickClock;

    .line 587
    .local v0, "other":Lorg/threeten/bp/Clock$TickClock;
    iget-object v2, p0, Lorg/threeten/bp/Clock$TickClock;->baseClock:Lorg/threeten/bp/Clock;

    iget-object v3, v0, Lorg/threeten/bp/Clock$TickClock;->baseClock:Lorg/threeten/bp/Clock;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/Clock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lorg/threeten/bp/Clock$TickClock;->tickNanos:J

    iget-wide v4, v0, Lorg/threeten/bp/Clock$TickClock;->tickNanos:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 589
    .end local v0    # "other":Lorg/threeten/bp/Clock$TickClock;
    :cond_0
    return v1
.end method

.method public getZone()Lorg/threeten/bp/ZoneId;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lorg/threeten/bp/Clock$TickClock;->baseClock:Lorg/threeten/bp/Clock;

    invoke-virtual {v0}, Lorg/threeten/bp/Clock;->getZone()Lorg/threeten/bp/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 593
    iget-object v0, p0, Lorg/threeten/bp/Clock$TickClock;->baseClock:Lorg/threeten/bp/Clock;

    invoke-virtual {v0}, Lorg/threeten/bp/Clock;->hashCode()I

    move-result v0

    iget-wide v2, p0, Lorg/threeten/bp/Clock$TickClock;->tickNanos:J

    iget-wide v4, p0, Lorg/threeten/bp/Clock$TickClock;->tickNanos:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public instant()Lorg/threeten/bp/Instant;
    .locals 14

    .prologue
    const-wide/32 v12, 0xf4240

    .line 574
    iget-wide v8, p0, Lorg/threeten/bp/Clock$TickClock;->tickNanos:J

    rem-long/2addr v8, v12

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-nez v3, :cond_0

    .line 575
    iget-object v3, p0, Lorg/threeten/bp/Clock$TickClock;->baseClock:Lorg/threeten/bp/Clock;

    invoke-virtual {v3}, Lorg/threeten/bp/Clock;->millis()J

    move-result-wide v4

    .line 576
    .local v4, "millis":J
    iget-wide v8, p0, Lorg/threeten/bp/Clock$TickClock;->tickNanos:J

    div-long/2addr v8, v12

    invoke-static {v4, v5, v8, v9}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorMod(JJ)J

    move-result-wide v8

    sub-long v8, v4, v8

    invoke-static {v8, v9}, Lorg/threeten/bp/Instant;->ofEpochMilli(J)Lorg/threeten/bp/Instant;

    move-result-object v3

    .line 581
    .end local v4    # "millis":J
    :goto_0
    return-object v3

    .line 578
    :cond_0
    iget-object v3, p0, Lorg/threeten/bp/Clock$TickClock;->baseClock:Lorg/threeten/bp/Clock;

    invoke-virtual {v3}, Lorg/threeten/bp/Clock;->instant()Lorg/threeten/bp/Instant;

    move-result-object v2

    .line 579
    .local v2, "instant":Lorg/threeten/bp/Instant;
    invoke-virtual {v2}, Lorg/threeten/bp/Instant;->getNano()I

    move-result v3

    int-to-long v6, v3

    .line 580
    .local v6, "nanos":J
    iget-wide v8, p0, Lorg/threeten/bp/Clock$TickClock;->tickNanos:J

    invoke-static {v6, v7, v8, v9}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorMod(JJ)J

    move-result-wide v0

    .line 581
    .local v0, "adjust":J
    invoke-virtual {v2, v0, v1}, Lorg/threeten/bp/Instant;->minusNanos(J)Lorg/threeten/bp/Instant;

    move-result-object v3

    goto :goto_0
.end method

.method public millis()J
    .locals 6

    .prologue
    .line 569
    iget-object v2, p0, Lorg/threeten/bp/Clock$TickClock;->baseClock:Lorg/threeten/bp/Clock;

    invoke-virtual {v2}, Lorg/threeten/bp/Clock;->millis()J

    move-result-wide v0

    .line 570
    .local v0, "millis":J
    iget-wide v2, p0, Lorg/threeten/bp/Clock$TickClock;->tickNanos:J

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->floorMod(JJ)J

    move-result-wide v2

    sub-long v2, v0, v2

    return-wide v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TickClock["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/Clock$TickClock;->baseClock:Lorg/threeten/bp/Clock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/threeten/bp/Clock$TickClock;->tickNanos:J

    invoke-static {v2, v3}, Lorg/threeten/bp/Duration;->ofNanos(J)Lorg/threeten/bp/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withZone(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/Clock;
    .locals 4
    .param p1, "zone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 562
    iget-object v0, p0, Lorg/threeten/bp/Clock$TickClock;->baseClock:Lorg/threeten/bp/Clock;

    invoke-virtual {v0}, Lorg/threeten/bp/Clock;->getZone()Lorg/threeten/bp/ZoneId;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/threeten/bp/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    .end local p0    # "this":Lorg/threeten/bp/Clock$TickClock;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/threeten/bp/Clock$TickClock;
    :cond_0
    new-instance v0, Lorg/threeten/bp/Clock$TickClock;

    iget-object v1, p0, Lorg/threeten/bp/Clock$TickClock;->baseClock:Lorg/threeten/bp/Clock;

    invoke-virtual {v1, p1}, Lorg/threeten/bp/Clock;->withZone(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/Clock;

    move-result-object v1

    iget-wide v2, p0, Lorg/threeten/bp/Clock$TickClock;->tickNanos:J

    invoke-direct {v0, v1, v2, v3}, Lorg/threeten/bp/Clock$TickClock;-><init>(Lorg/threeten/bp/Clock;J)V

    move-object p0, v0

    goto :goto_0
.end method
