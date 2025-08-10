.class public final Lorg/threeten/bp/temporal/ValueRange;
.super Ljava/lang/Object;
.source "ValueRange.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x658e56a90d32a548L


# instance fields
.field private final maxLargest:J

.field private final maxSmallest:J

.field private final minLargest:J

.field private final minSmallest:J


# direct methods
.method private constructor <init>(JJJJ)V
    .locals 1
    .param p1, "minSmallest"    # J
    .param p3, "minLargest"    # J
    .param p5, "maxSmallest"    # J
    .param p7, "maxLargest"    # J

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-wide p1, p0, Lorg/threeten/bp/temporal/ValueRange;->minSmallest:J

    .line 154
    iput-wide p3, p0, Lorg/threeten/bp/temporal/ValueRange;->minLargest:J

    .line 155
    iput-wide p5, p0, Lorg/threeten/bp/temporal/ValueRange;->maxSmallest:J

    .line 156
    iput-wide p7, p0, Lorg/threeten/bp/temporal/ValueRange;->maxLargest:J

    .line 157
    return-void
.end method

.method public static of(JJ)Lorg/threeten/bp/temporal/ValueRange;
    .locals 10
    .param p0, "min"    # J
    .param p2, "max"    # J

    .prologue
    .line 92
    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum value must be less than maximum value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    new-instance v1, Lorg/threeten/bp/temporal/ValueRange;

    move-wide v2, p0

    move-wide v4, p0

    move-wide v6, p2

    move-wide v8, p2

    invoke-direct/range {v1 .. v9}, Lorg/threeten/bp/temporal/ValueRange;-><init>(JJJJ)V

    return-object v1
.end method

.method public static of(JJJ)Lorg/threeten/bp/temporal/ValueRange;
    .locals 8
    .param p0, "min"    # J
    .param p2, "maxSmallest"    # J
    .param p4, "maxLargest"    # J

    .prologue
    .line 113
    move-wide v0, p0

    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Lorg/threeten/bp/temporal/ValueRange;->of(JJJJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public static of(JJJJ)Lorg/threeten/bp/temporal/ValueRange;
    .locals 10
    .param p0, "minSmallest"    # J
    .param p2, "minLargest"    # J
    .param p4, "maxSmallest"    # J
    .param p6, "maxLargest"    # J

    .prologue
    .line 132
    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Smallest minimum value must be less than largest minimum value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    cmp-long v0, p4, p6

    if-lez v0, :cond_1

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Smallest maximum value must be less than largest maximum value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_1
    cmp-long v0, p2, p6

    if-lez v0, :cond_2

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum value must be less than maximum value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_2
    new-instance v1, Lorg/threeten/bp/temporal/ValueRange;

    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lorg/threeten/bp/temporal/ValueRange;-><init>(JJJJ)V

    return-object v1
.end method


# virtual methods
.method public checkValidIntValue(JLorg/threeten/bp/temporal/TemporalField;)I
    .locals 3
    .param p1, "value"    # J
    .param p3, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 299
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/temporal/ValueRange;->isValidIntValue(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid int value for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_0
    long-to-int v0, p1

    return v0
.end method

.method public checkValidValue(JLorg/threeten/bp/temporal/TemporalField;)J
    .locals 3
    .param p1, "value"    # J
    .param p3, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 276
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/temporal/ValueRange;->isValidValue(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 277
    if-eqz p3, :cond_0

    .line 278
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (valid values "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_0
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value (valid values "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_1
    return-wide p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 318
    if-ne p1, p0, :cond_1

    .line 326
    :cond_0
    :goto_0
    return v1

    .line 321
    :cond_1
    instance-of v3, p1, Lorg/threeten/bp/temporal/ValueRange;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 322
    check-cast v0, Lorg/threeten/bp/temporal/ValueRange;

    .line 323
    .local v0, "other":Lorg/threeten/bp/temporal/ValueRange;
    iget-wide v4, p0, Lorg/threeten/bp/temporal/ValueRange;->minSmallest:J

    iget-wide v6, v0, Lorg/threeten/bp/temporal/ValueRange;->minSmallest:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    iget-wide v4, p0, Lorg/threeten/bp/temporal/ValueRange;->minLargest:J

    iget-wide v6, v0, Lorg/threeten/bp/temporal/ValueRange;->minLargest:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    iget-wide v4, p0, Lorg/threeten/bp/temporal/ValueRange;->maxSmallest:J

    iget-wide v6, v0, Lorg/threeten/bp/temporal/ValueRange;->maxSmallest:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    iget-wide v4, p0, Lorg/threeten/bp/temporal/ValueRange;->maxLargest:J

    iget-wide v6, v0, Lorg/threeten/bp/temporal/ValueRange;->maxLargest:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lorg/threeten/bp/temporal/ValueRange;
    :cond_3
    move v1, v2

    .line 326
    goto :goto_0
.end method

.method public getLargestMinimum()J
    .locals 2

    .prologue
    .line 195
    iget-wide v0, p0, Lorg/threeten/bp/temporal/ValueRange;->minLargest:J

    return-wide v0
.end method

.method public getMaximum()J
    .locals 2

    .prologue
    .line 219
    iget-wide v0, p0, Lorg/threeten/bp/temporal/ValueRange;->maxLargest:J

    return-wide v0
.end method

.method public getMinimum()J
    .locals 2

    .prologue
    .line 183
    iget-wide v0, p0, Lorg/threeten/bp/temporal/ValueRange;->minSmallest:J

    return-wide v0
.end method

.method public getSmallestMaximum()J
    .locals 2

    .prologue
    .line 207
    iget-wide v0, p0, Lorg/threeten/bp/temporal/ValueRange;->maxSmallest:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 12

    .prologue
    const-wide/16 v10, 0x30

    const-wide/16 v8, 0x20

    .line 336
    iget-wide v2, p0, Lorg/threeten/bp/temporal/ValueRange;->minSmallest:J

    iget-wide v4, p0, Lorg/threeten/bp/temporal/ValueRange;->minLargest:J

    add-long/2addr v2, v4

    const-wide/16 v4, 0x10

    iget-wide v6, p0, Lorg/threeten/bp/temporal/ValueRange;->minLargest:J

    add-long/2addr v4, v6

    long-to-int v4, v4

    shl-long/2addr v2, v4

    iget-wide v4, p0, Lorg/threeten/bp/temporal/ValueRange;->maxSmallest:J

    add-long/2addr v4, v10

    long-to-int v4, v4

    shr-long/2addr v2, v4

    iget-wide v4, p0, Lorg/threeten/bp/temporal/ValueRange;->maxSmallest:J

    add-long/2addr v4, v8

    long-to-int v4, v4

    shl-long/2addr v2, v4

    iget-wide v4, p0, Lorg/threeten/bp/temporal/ValueRange;->maxLargest:J

    add-long/2addr v4, v8

    long-to-int v4, v4

    shr-long/2addr v2, v4

    iget-wide v4, p0, Lorg/threeten/bp/temporal/ValueRange;->maxLargest:J

    add-long/2addr v4, v10

    long-to-int v4, v4

    shl-long/2addr v2, v4

    const/16 v4, 0x10

    shr-long v0, v2, v4

    .line 338
    .local v0, "hash":J
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v2, v0

    long-to-int v2, v2

    return v2
.end method

.method public isFixed()Z
    .locals 4

    .prologue
    .line 170
    iget-wide v0, p0, Lorg/threeten/bp/temporal/ValueRange;->minSmallest:J

    iget-wide v2, p0, Lorg/threeten/bp/temporal/ValueRange;->minLargest:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/threeten/bp/temporal/ValueRange;->maxSmallest:J

    iget-wide v2, p0, Lorg/threeten/bp/temporal/ValueRange;->maxLargest:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIntValue()Z
    .locals 4

    .prologue
    .line 236
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/ValueRange;->getMinimum()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/threeten/bp/temporal/ValueRange;->getMaximum()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidIntValue(J)Z
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 261
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/ValueRange;->isIntValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/temporal/ValueRange;->isValidValue(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidValue(J)Z
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 248
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/ValueRange;->getMinimum()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/threeten/bp/temporal/ValueRange;->getMaximum()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x2f

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-wide v2, p0, Lorg/threeten/bp/temporal/ValueRange;->minSmallest:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 355
    iget-wide v2, p0, Lorg/threeten/bp/temporal/ValueRange;->minSmallest:J

    iget-wide v4, p0, Lorg/threeten/bp/temporal/ValueRange;->minLargest:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 356
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/threeten/bp/temporal/ValueRange;->minLargest:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 358
    :cond_0
    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/threeten/bp/temporal/ValueRange;->maxSmallest:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 359
    iget-wide v2, p0, Lorg/threeten/bp/temporal/ValueRange;->maxSmallest:J

    iget-wide v4, p0, Lorg/threeten/bp/temporal/ValueRange;->maxLargest:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 360
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/threeten/bp/temporal/ValueRange;->maxLargest:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 362
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
