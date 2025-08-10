.class final Lorg/threeten/bp/zone/ZoneRules$Fixed;
.super Lorg/threeten/bp/zone/ZoneRules;
.source "ZoneRules.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/zone/ZoneRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Fixed"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7934694b7c9bb149L


# instance fields
.field private final offset:Lorg/threeten/bp/ZoneOffset;


# direct methods
.method constructor <init>(Lorg/threeten/bp/ZoneOffset;)V
    .locals 0
    .param p1, "offset"    # Lorg/threeten/bp/ZoneOffset;

    .prologue
    .line 413
    invoke-direct {p0}, Lorg/threeten/bp/zone/ZoneRules;-><init>()V

    .line 414
    iput-object p1, p0, Lorg/threeten/bp/zone/ZoneRules$Fixed;->offset:Lorg/threeten/bp/ZoneOffset;

    .line 415
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 488
    if-ne p0, p1, :cond_1

    .line 498
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 491
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v3, p1, Lorg/threeten/bp/zone/ZoneRules$Fixed;

    if-eqz v3, :cond_2

    .line 492
    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneRules$Fixed;->offset:Lorg/threeten/bp/ZoneOffset;

    check-cast p1, Lorg/threeten/bp/zone/ZoneRules$Fixed;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v2, p1, Lorg/threeten/bp/zone/ZoneRules$Fixed;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v1, v2}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 494
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v3, p1, Lorg/threeten/bp/zone/StandardZoneRules;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 495
    check-cast v0, Lorg/threeten/bp/zone/StandardZoneRules;

    .line 496
    .local v0, "szr":Lorg/threeten/bp/zone/StandardZoneRules;
    invoke-virtual {v0}, Lorg/threeten/bp/zone/StandardZoneRules;->isFixedOffset()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/threeten/bp/zone/ZoneRules$Fixed;->offset:Lorg/threeten/bp/ZoneOffset;

    sget-object v4, Lorg/threeten/bp/Instant;->EPOCH:Lorg/threeten/bp/Instant;

    invoke-virtual {v0, v4}, Lorg/threeten/bp/zone/StandardZoneRules;->getOffset(Lorg/threeten/bp/Instant;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "szr":Lorg/threeten/bp/zone/StandardZoneRules;
    :cond_4
    move v1, v2

    .line 498
    goto :goto_0
.end method

.method public getDaylightSavings(Lorg/threeten/bp/Instant;)Lorg/threeten/bp/Duration;
    .locals 1
    .param p1, "instant"    # Lorg/threeten/bp/Instant;

    .prologue
    .line 456
    sget-object v0, Lorg/threeten/bp/Duration;->ZERO:Lorg/threeten/bp/Duration;

    return-object v0
.end method

.method public getOffset(Lorg/threeten/bp/Instant;)Lorg/threeten/bp/ZoneOffset;
    .locals 1
    .param p1, "instant"    # Lorg/threeten/bp/Instant;

    .prologue
    .line 425
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRules$Fixed;->offset:Lorg/threeten/bp/ZoneOffset;

    return-object v0
.end method

.method public getOffset(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/ZoneOffset;
    .locals 1
    .param p1, "localDateTime"    # Lorg/threeten/bp/LocalDateTime;

    .prologue
    .line 430
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRules$Fixed;->offset:Lorg/threeten/bp/ZoneOffset;

    return-object v0
.end method

.method public getStandardOffset(Lorg/threeten/bp/Instant;)Lorg/threeten/bp/ZoneOffset;
    .locals 1
    .param p1, "instant"    # Lorg/threeten/bp/Instant;

    .prologue
    .line 451
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRules$Fixed;->offset:Lorg/threeten/bp/ZoneOffset;

    return-object v0
.end method

.method public getTransition(Lorg/threeten/bp/LocalDateTime;)Lorg/threeten/bp/zone/ZoneOffsetTransition;
    .locals 1
    .param p1, "localDateTime"    # Lorg/threeten/bp/LocalDateTime;

    .prologue
    .line 440
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransitionRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 482
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTransitions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/threeten/bp/zone/ZoneOffsetTransition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 477
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValidOffsets(Lorg/threeten/bp/LocalDateTime;)Ljava/util/List;
    .locals 1
    .param p1, "localDateTime"    # Lorg/threeten/bp/LocalDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/LocalDateTime;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/threeten/bp/ZoneOffset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 435
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRules$Fixed;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRules$Fixed;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0}, Lorg/threeten/bp/ZoneOffset;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    xor-int/lit8 v0, v0, 0x1

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneRules$Fixed;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneOffset;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x1f

    xor-int/2addr v0, v1

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isDaylightSavings(Lorg/threeten/bp/Instant;)Z
    .locals 1
    .param p1, "instant"    # Lorg/threeten/bp/Instant;

    .prologue
    .line 461
    const/4 v0, 0x0

    return v0
.end method

.method public isFixedOffset()Z
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x1

    return v0
.end method

.method public isValidOffset(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Z
    .locals 1
    .param p1, "dateTime"    # Lorg/threeten/bp/LocalDateTime;
    .param p2, "offset"    # Lorg/threeten/bp/ZoneOffset;

    .prologue
    .line 445
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneRules$Fixed;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, p2}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public nextTransition(Lorg/threeten/bp/Instant;)Lorg/threeten/bp/zone/ZoneOffsetTransition;
    .locals 1
    .param p1, "instant"    # Lorg/threeten/bp/Instant;

    .prologue
    .line 467
    const/4 v0, 0x0

    return-object v0
.end method

.method public previousTransition(Lorg/threeten/bp/Instant;)Lorg/threeten/bp/zone/ZoneOffsetTransition;
    .locals 1
    .param p1, "instant"    # Lorg/threeten/bp/Instant;

    .prologue
    .line 472
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FixedRules:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneRules$Fixed;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
