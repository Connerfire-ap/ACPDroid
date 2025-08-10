.class final Lorg/threeten/bp/Clock$FixedClock;
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
    name = "FixedClock"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x671e0bb19c27c88eL


# instance fields
.field private final instant:Lorg/threeten/bp/Instant;

.field private final zone:Lorg/threeten/bp/ZoneId;


# direct methods
.method constructor <init>(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)V
    .locals 0
    .param p1, "fixedInstant"    # Lorg/threeten/bp/Instant;
    .param p2, "zone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 452
    invoke-direct {p0}, Lorg/threeten/bp/Clock;-><init>()V

    .line 453
    iput-object p1, p0, Lorg/threeten/bp/Clock$FixedClock;->instant:Lorg/threeten/bp/Instant;

    .line 454
    iput-object p2, p0, Lorg/threeten/bp/Clock$FixedClock;->zone:Lorg/threeten/bp/ZoneId;

    .line 455
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 477
    instance-of v2, p1, Lorg/threeten/bp/Clock$FixedClock;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 478
    check-cast v0, Lorg/threeten/bp/Clock$FixedClock;

    .line 479
    .local v0, "other":Lorg/threeten/bp/Clock$FixedClock;
    iget-object v2, p0, Lorg/threeten/bp/Clock$FixedClock;->instant:Lorg/threeten/bp/Instant;

    iget-object v3, v0, Lorg/threeten/bp/Clock$FixedClock;->instant:Lorg/threeten/bp/Instant;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/Instant;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/threeten/bp/Clock$FixedClock;->zone:Lorg/threeten/bp/ZoneId;

    iget-object v3, v0, Lorg/threeten/bp/Clock$FixedClock;->zone:Lorg/threeten/bp/ZoneId;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 481
    .end local v0    # "other":Lorg/threeten/bp/Clock$FixedClock;
    :cond_0
    return v1
.end method

.method public getZone()Lorg/threeten/bp/ZoneId;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lorg/threeten/bp/Clock$FixedClock;->zone:Lorg/threeten/bp/ZoneId;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lorg/threeten/bp/Clock$FixedClock;->instant:Lorg/threeten/bp/Instant;

    invoke-virtual {v0}, Lorg/threeten/bp/Instant;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/threeten/bp/Clock$FixedClock;->zone:Lorg/threeten/bp/ZoneId;

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneId;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public instant()Lorg/threeten/bp/Instant;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lorg/threeten/bp/Clock$FixedClock;->instant:Lorg/threeten/bp/Instant;

    return-object v0
.end method

.method public millis()J
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lorg/threeten/bp/Clock$FixedClock;->instant:Lorg/threeten/bp/Instant;

    invoke-virtual {v0}, Lorg/threeten/bp/Instant;->toEpochMilli()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FixedClock["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/Clock$FixedClock;->instant:Lorg/threeten/bp/Instant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/Clock$FixedClock;->zone:Lorg/threeten/bp/ZoneId;

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
    .locals 2
    .param p1, "zone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 462
    iget-object v0, p0, Lorg/threeten/bp/Clock$FixedClock;->zone:Lorg/threeten/bp/ZoneId;

    invoke-virtual {p1, v0}, Lorg/threeten/bp/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    .end local p0    # "this":Lorg/threeten/bp/Clock$FixedClock;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/threeten/bp/Clock$FixedClock;
    :cond_0
    new-instance v0, Lorg/threeten/bp/Clock$FixedClock;

    iget-object v1, p0, Lorg/threeten/bp/Clock$FixedClock;->instant:Lorg/threeten/bp/Instant;

    invoke-direct {v0, v1, p1}, Lorg/threeten/bp/Clock$FixedClock;-><init>(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)V

    move-object p0, v0

    goto :goto_0
.end method
