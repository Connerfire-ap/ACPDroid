.class Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;
.super Ljava/lang/Object;
.source "TzdbZoneRulesProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/zone/TzdbZoneRulesProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Version"
.end annotation


# instance fields
.field private final regionArray:[Ljava/lang/String;

.field private final ruleData:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final ruleIndices:[S

.field private final versionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;[SLjava/util/concurrent/atomic/AtomicReferenceArray;)V
    .locals 0
    .param p1, "versionId"    # Ljava/lang/String;
    .param p2, "regionIds"    # [Ljava/lang/String;
    .param p3, "ruleIndices"    # [S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[S",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p4, "ruleData":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p4, p0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;->ruleData:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 296
    iput-object p1, p0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;->versionId:Ljava/lang/String;

    .line 297
    iput-object p2, p0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;->regionArray:[Ljava/lang/String;

    .line 298
    iput-object p3, p0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;->ruleIndices:[S

    .line 299
    return-void
.end method

.method static synthetic access$000(Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;

    .prologue
    .line 288
    iget-object v0, p0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;->versionId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method createRule(S)Lorg/threeten/bp/zone/ZoneRules;
    .locals 4
    .param p1, "index"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 314
    iget-object v3, p0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;->ruleData:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 315
    .local v2, "obj":Ljava/lang/Object;
    instance-of v3, v2, [B

    if-eqz v3, :cond_0

    .line 316
    check-cast v2, [B

    .end local v2    # "obj":Ljava/lang/Object;
    move-object v0, v2

    check-cast v0, [B

    .line 317
    .local v0, "bytes":[B
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 318
    .local v1, "dis":Ljava/io/DataInputStream;
    invoke-static {v1}, Lorg/threeten/bp/zone/Ser;->read(Ljava/io/DataInput;)Ljava/lang/Object;

    move-result-object v2

    .line 319
    .restart local v2    # "obj":Ljava/lang/Object;
    iget-object v3, p0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;->ruleData:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v3, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 321
    .end local v0    # "bytes":[B
    .end local v1    # "dis":Ljava/io/DataInputStream;
    :cond_0
    check-cast v2, Lorg/threeten/bp/zone/ZoneRules;

    .end local v2    # "obj":Ljava/lang/Object;
    return-object v2
.end method

.method getRules(Ljava/lang/String;)Lorg/threeten/bp/zone/ZoneRules;
    .locals 5
    .param p1, "regionId"    # Ljava/lang/String;

    .prologue
    .line 302
    iget-object v2, p0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;->regionArray:[Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 303
    .local v1, "regionIndex":I
    if-gez v1, :cond_0

    .line 304
    const/4 v2, 0x0

    .line 307
    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;->ruleIndices:[S

    aget-short v2, v2, v1

    invoke-virtual {p0, v2}, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;->createRule(S)Lorg/threeten/bp/zone/ZoneRules;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Lorg/threeten/bp/zone/ZoneRulesException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid binary time-zone data: TZDB:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;->versionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/threeten/bp/zone/ZoneRulesException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;->versionId:Ljava/lang/String;

    return-object v0
.end method
