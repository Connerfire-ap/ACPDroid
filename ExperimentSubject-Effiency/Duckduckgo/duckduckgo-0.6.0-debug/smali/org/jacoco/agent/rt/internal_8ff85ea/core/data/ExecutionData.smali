.class public final Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionData;
.super Ljava/lang/Object;
.source "ExecutionData.java"


# instance fields
.field private final id:J

.field private final name:Ljava/lang/String;

.field private final probes:[Z


# direct methods
.method public constructor <init>(JLjava/lang/String;I)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "probeCount"    # I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-wide p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionData;->id:J

    .line 61
    iput-object p3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionData;->name:Ljava/lang/String;

    .line 62
    new-array v0, p4, [Z

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionData;->probes:[Z

    .line 63
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;[Z)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "probes"    # [Z

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionData;->id:J

    .line 44
    iput-object p3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionData;->name:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionData;->probes:[Z

    .line 46
    return-void
.end method


# virtual methods
.method public assertCompatibility(JLjava/lang/String;I)V
    .locals 6
    .param p1, "id"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "probecount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 184
    iget-wide v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionData;->id:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    cmp-long v5, v0, p1

    if-nez v5, :cond_2

    .line 189
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionData;->name:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionData;->probes:[Z

    array-length v0, v0

    if-ne v0, p4, :cond_0

    .line 199
    return-void

    .line 195
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p3, v1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Incompatible execution data for class %s with id %016x."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionData;->name:Ljava/lang/String;

    aput-object v5, v1, v3

    aput-object p3, v1, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "Different class names %s and %s for id %016x."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-array v1, v4, [Ljava/lang/Object;

    iget-wide v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionData;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Different ids (%016x and %016x)."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getId()J
    .locals 2

    .line 72
    iget-wide v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionData;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProbes()[Z
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionData;->probes:[Z

    return-object v0
.end method

.method public hasHits()Z
    .locals 5

    .line 107
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionData;->probes:[Z

    .local v0, "arr$":[Z
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-boolean v3, v0, v2

    .line 108
    .local v3, "p":Z
    if-eqz v3, :cond_0

    .line 109
    const/4 v4, 0x1

    return v4

    .line 107
    .end local v3    # "p":Z
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    .end local v0    # "arr$":[Z
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public merge(Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionData;)V
    .locals 1
    .param p1, "other"    # Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionData;

    .line 131
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionData;->merge(Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionData;Z)V

    .line 132
    return-void
.end method

.method public merge(Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionData;Z)V
    .locals 4
    .param p1, "other"    # Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionData;
    .param p2, "flag"    # Z

    .line 158
    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionData;->getId()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionData;->getProbes()[Z

    move-result-object v3

    array-length v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionData;->assertCompatibility(JLjava/lang/String;I)V

    .line 160
    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionData;->getProbes()[Z

    move-result-object v0

    .line 161
    .local v0, "otherData":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionData;->probes:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 162
    aget-boolean v3, v0, v1

    if-eqz v3, :cond_0

    .line 163
    aput-boolean p2, v2, v1

    .line 161
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 2

    .line 98
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionData;->probes:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 99
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 203
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionData;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionData;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "ExecutionData[name=%s, id=%016x]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
