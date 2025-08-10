.class final Lorg/threeten/bp/Clock$OffsetClock;
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
    name = "OffsetClock"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1bdc04b7477ef050L


# instance fields
.field private final baseClock:Lorg/threeten/bp/Clock;

.field private final offset:Lorg/threeten/bp/Duration;


# direct methods
.method constructor <init>(Lorg/threeten/bp/Clock;Lorg/threeten/bp/Duration;)V
    .locals 0
    .param p1, "baseClock"    # Lorg/threeten/bp/Clock;
    .param p2, "offset"    # Lorg/threeten/bp/Duration;

    .prologue
    .line 502
    invoke-direct {p0}, Lorg/threeten/bp/Clock;-><init>()V

    .line 503
    iput-object p1, p0, Lorg/threeten/bp/Clock$OffsetClock;->baseClock:Lorg/threeten/bp/Clock;

    .line 504
    iput-object p2, p0, Lorg/threeten/bp/Clock$OffsetClock;->offset:Lorg/threeten/bp/Duration;

    .line 505
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 527
    instance-of v2, p1, Lorg/threeten/bp/Clock$OffsetClock;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 528
    check-cast v0, Lorg/threeten/bp/Clock$OffsetClock;

    .line 529
    .local v0, "other":Lorg/threeten/bp/Clock$OffsetClock;
    iget-object v2, p0, Lorg/threeten/bp/Clock$OffsetClock;->baseClock:Lorg/threeten/bp/Clock;

    iget-object v3, v0, Lorg/threeten/bp/Clock$OffsetClock;->baseClock:Lorg/threeten/bp/Clock;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/Clock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/threeten/bp/Clock$OffsetClock;->offset:Lorg/threeten/bp/Duration;

    iget-object v3, v0, Lorg/threeten/bp/Clock$OffsetClock;->offset:Lorg/threeten/bp/Duration;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/Duration;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 531
    .end local v0    # "other":Lorg/threeten/bp/Clock$OffsetClock;
    :cond_0
    return v1
.end method

.method public getZone()Lorg/threeten/bp/ZoneId;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lorg/threeten/bp/Clock$OffsetClock;->baseClock:Lorg/threeten/bp/Clock;

    invoke-virtual {v0}, Lorg/threeten/bp/Clock;->getZone()Lorg/threeten/bp/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Lorg/threeten/bp/Clock$OffsetClock;->baseClock:Lorg/threeten/bp/Clock;

    invoke-virtual {v0}, Lorg/threeten/bp/Clock;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/threeten/bp/Clock$OffsetClock;->offset:Lorg/threeten/bp/Duration;

    invoke-virtual {v1}, Lorg/threeten/bp/Duration;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public instant()Lorg/threeten/bp/Instant;
    .locals 2

    .prologue
    .line 523
    iget-object v0, p0, Lorg/threeten/bp/Clock$OffsetClock;->baseClock:Lorg/threeten/bp/Clock;

    invoke-virtual {v0}, Lorg/threeten/bp/Clock;->instant()Lorg/threeten/bp/Instant;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/Clock$OffsetClock;->offset:Lorg/threeten/bp/Duration;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/Instant;->plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/Instant;

    move-result-object v0

    return-object v0
.end method

.method public millis()J
    .locals 4

    .prologue
    .line 519
    iget-object v0, p0, Lorg/threeten/bp/Clock$OffsetClock;->baseClock:Lorg/threeten/bp/Clock;

    invoke-virtual {v0}, Lorg/threeten/bp/Clock;->millis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/threeten/bp/Clock$OffsetClock;->offset:Lorg/threeten/bp/Duration;

    invoke-virtual {v2}, Lorg/threeten/bp/Duration;->toMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OffsetClock["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/Clock$OffsetClock;->baseClock:Lorg/threeten/bp/Clock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/Clock$OffsetClock;->offset:Lorg/threeten/bp/Duration;

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
    .locals 3
    .param p1, "zone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 512
    iget-object v0, p0, Lorg/threeten/bp/Clock$OffsetClock;->baseClock:Lorg/threeten/bp/Clock;

    invoke-virtual {v0}, Lorg/threeten/bp/Clock;->getZone()Lorg/threeten/bp/ZoneId;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/threeten/bp/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    .end local p0    # "this":Lorg/threeten/bp/Clock$OffsetClock;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/threeten/bp/Clock$OffsetClock;
    :cond_0
    new-instance v0, Lorg/threeten/bp/Clock$OffsetClock;

    iget-object v1, p0, Lorg/threeten/bp/Clock$OffsetClock;->baseClock:Lorg/threeten/bp/Clock;

    invoke-virtual {v1, p1}, Lorg/threeten/bp/Clock;->withZone(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/Clock;

    move-result-object v1

    iget-object v2, p0, Lorg/threeten/bp/Clock$OffsetClock;->offset:Lorg/threeten/bp/Duration;

    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/Clock$OffsetClock;-><init>(Lorg/threeten/bp/Clock;Lorg/threeten/bp/Duration;)V

    move-object p0, v0

    goto :goto_0
.end method
