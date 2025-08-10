.class public final Lorg/threeten/bp/zone/ZoneOffsetTransition;
.super Ljava/lang/Object;
.source "ZoneOffsetTransition.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/threeten/bp/zone/ZoneOffsetTransition;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x60654e82b3c68362L


# instance fields
.field private final offsetAfter:Lorg/threeten/bp/ZoneOffset;

.field private final offsetBefore:Lorg/threeten/bp/ZoneOffset;

.field private final transition:Lorg/threeten/bp/LocalDateTime;


# direct methods
.method constructor <init>(JLorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneOffset;)V
    .locals 1
    .param p1, "epochSecond"    # J
    .param p3, "offsetBefore"    # Lorg/threeten/bp/ZoneOffset;
    .param p4, "offsetAfter"    # Lorg/threeten/bp/ZoneOffset;

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p3}, Lorg/threeten/bp/LocalDateTime;->ofEpochSecond(JILorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    iput-object v0, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->transition:Lorg/threeten/bp/LocalDateTime;

    .line 136
    iput-object p3, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->offsetBefore:Lorg/threeten/bp/ZoneOffset;

    .line 137
    iput-object p4, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->offsetAfter:Lorg/threeten/bp/ZoneOffset;

    .line 138
    return-void
.end method

.method constructor <init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneOffset;)V
    .locals 0
    .param p1, "transition"    # Lorg/threeten/bp/LocalDateTime;
    .param p2, "offsetBefore"    # Lorg/threeten/bp/ZoneOffset;
    .param p3, "offsetAfter"    # Lorg/threeten/bp/ZoneOffset;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->transition:Lorg/threeten/bp/LocalDateTime;

    .line 123
    iput-object p2, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->offsetBefore:Lorg/threeten/bp/ZoneOffset;

    .line 124
    iput-object p3, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->offsetAfter:Lorg/threeten/bp/ZoneOffset;

    .line 125
    return-void
.end method

.method private getDurationSeconds()I
    .locals 2

    .prologue
    .line 276
    invoke-virtual {p0}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetAfter()Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v0

    invoke-virtual {p0}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetBefore()Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static of(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/zone/ZoneOffsetTransition;
    .locals 2
    .param p0, "transition"    # Lorg/threeten/bp/LocalDateTime;
    .param p1, "offsetBefore"    # Lorg/threeten/bp/ZoneOffset;
    .param p2, "offsetAfter"    # Lorg/threeten/bp/ZoneOffset;

    .prologue
    .line 102
    const-string v0, "transition"

    invoke-static {p0, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    const-string v0, "offsetBefore"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    const-string v0, "offsetAfter"

    invoke-static {p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    invoke-virtual {p1, p2}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Offsets must not be equal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDateTime;->getNano()I

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Nano-of-second must be zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1
    new-instance v0, Lorg/threeten/bp/zone/ZoneOffsetTransition;

    invoke-direct {v0, p0, p1, p2}, Lorg/threeten/bp/zone/ZoneOffsetTransition;-><init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneOffset;)V

    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/zone/ZoneOffsetTransition;
    .locals 6
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-static {p0}, Lorg/threeten/bp/zone/Ser;->readEpochSec(Ljava/io/DataInput;)J

    move-result-wide v2

    .line 171
    .local v2, "epochSecond":J
    invoke-static {p0}, Lorg/threeten/bp/zone/Ser;->readOffset(Ljava/io/DataInput;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    .line 172
    .local v1, "before":Lorg/threeten/bp/ZoneOffset;
    invoke-static {p0}, Lorg/threeten/bp/zone/Ser;->readOffset(Ljava/io/DataInput;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    .line 173
    .local v0, "after":Lorg/threeten/bp/ZoneOffset;
    invoke-virtual {v1, v0}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 174
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Offsets must not be equal"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 176
    :cond_0
    new-instance v4, Lorg/threeten/bp/zone/ZoneOffsetTransition;

    invoke-direct {v4, v2, v3, v1, v0}, Lorg/threeten/bp/zone/ZoneOffsetTransition;-><init>(JLorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneOffset;)V

    return-object v4
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 147
    new-instance v0, Lorg/threeten/bp/zone/Ser;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/zone/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 66
    check-cast p1, Lorg/threeten/bp/zone/ZoneOffsetTransition;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->compareTo(Lorg/threeten/bp/zone/ZoneOffsetTransition;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/threeten/bp/zone/ZoneOffsetTransition;)I
    .locals 2
    .param p1, "transition"    # Lorg/threeten/bp/zone/ZoneOffsetTransition;

    .prologue
    .line 345
    invoke-virtual {p0}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getInstant()Lorg/threeten/bp/Instant;

    move-result-object v0

    invoke-virtual {p1}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getInstant()Lorg/threeten/bp/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/Instant;->compareTo(Lorg/threeten/bp/Instant;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 359
    if-ne p1, p0, :cond_1

    .line 367
    :cond_0
    :goto_0
    return v1

    .line 362
    :cond_1
    instance-of v3, p1, Lorg/threeten/bp/zone/ZoneOffsetTransition;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 363
    check-cast v0, Lorg/threeten/bp/zone/ZoneOffsetTransition;

    .line 364
    .local v0, "d":Lorg/threeten/bp/zone/ZoneOffsetTransition;
    iget-object v3, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->transition:Lorg/threeten/bp/LocalDateTime;

    iget-object v4, v0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->transition:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v3, v4}, Lorg/threeten/bp/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->offsetBefore:Lorg/threeten/bp/ZoneOffset;

    iget-object v4, v0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->offsetBefore:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v3, v4}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->offsetAfter:Lorg/threeten/bp/ZoneOffset;

    iget-object v4, v0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->offsetAfter:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v3, v4}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "d":Lorg/threeten/bp/zone/ZoneOffsetTransition;
    :cond_3
    move v1, v2

    .line 367
    goto :goto_0
.end method

.method public getDateTimeAfter()Lorg/threeten/bp/LocalDateTime;
    .locals 4

    .prologue
    .line 232
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->transition:Lorg/threeten/bp/LocalDateTime;

    invoke-direct {p0}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getDurationSeconds()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/LocalDateTime;->plusSeconds(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public getDateTimeBefore()Lorg/threeten/bp/LocalDateTime;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->transition:Lorg/threeten/bp/LocalDateTime;

    return-object v0
.end method

.method public getDuration()Lorg/threeten/bp/Duration;
    .locals 2

    .prologue
    .line 267
    invoke-direct {p0}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getDurationSeconds()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getInstant()Lorg/threeten/bp/Instant;
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->transition:Lorg/threeten/bp/LocalDateTime;

    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->offsetBefore:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/LocalDateTime;->toInstant(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/Instant;

    move-result-object v0

    return-object v0
.end method

.method public getOffsetAfter()Lorg/threeten/bp/ZoneOffset;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->offsetAfter:Lorg/threeten/bp/ZoneOffset;

    return-object v0
.end method

.method public getOffsetBefore()Lorg/threeten/bp/ZoneOffset;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->offsetBefore:Lorg/threeten/bp/ZoneOffset;

    return-object v0
.end method

.method getValidOffsets()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/threeten/bp/ZoneOffset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    invoke-virtual {p0}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->isGap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 330
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/threeten/bp/ZoneOffset;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetBefore()Lorg/threeten/bp/ZoneOffset;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetAfter()Lorg/threeten/bp/ZoneOffset;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 377
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->transition:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->offsetBefore:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->offsetAfter:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneOffset;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isGap()Z
    .locals 2

    .prologue
    .line 289
    invoke-virtual {p0}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetAfter()Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v0

    invoke-virtual {p0}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetBefore()Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverlap()Z
    .locals 2

    .prologue
    .line 302
    invoke-virtual {p0}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetAfter()Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v0

    invoke-virtual {p0}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetBefore()Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidOffset(Lorg/threeten/bp/ZoneOffset;)Z
    .locals 2
    .param p1, "offset"    # Lorg/threeten/bp/ZoneOffset;

    .prologue
    const/4 v0, 0x0

    .line 316
    invoke-virtual {p0}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->isGap()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetBefore()Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetAfter()Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toEpochSecond()J
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->transition:Lorg/threeten/bp/LocalDateTime;

    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->offsetBefore:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/LocalDateTime;->toEpochSecond(Lorg/threeten/bp/ZoneOffset;)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "Transition["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->isGap()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Gap"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->transition:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->offsetBefore:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->offsetAfter:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 389
    :cond_0
    const-string v1, "Overlap"

    goto :goto_0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p0}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lorg/threeten/bp/zone/Ser;->writeEpochSec(JLjava/io/DataOutput;)V

    .line 158
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->offsetBefore:Lorg/threeten/bp/ZoneOffset;

    invoke-static {v0, p1}, Lorg/threeten/bp/zone/Ser;->writeOffset(Lorg/threeten/bp/ZoneOffset;Ljava/io/DataOutput;)V

    .line 159
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->offsetAfter:Lorg/threeten/bp/ZoneOffset;

    invoke-static {v0, p1}, Lorg/threeten/bp/zone/Ser;->writeOffset(Lorg/threeten/bp/ZoneOffset;Ljava/io/DataOutput;)V

    .line 160
    return-void
.end method
