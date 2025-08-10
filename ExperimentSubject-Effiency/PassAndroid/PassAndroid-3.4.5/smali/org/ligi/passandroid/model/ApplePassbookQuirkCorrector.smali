.class public final Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;
.super Ljava/lang/Object;
.source "ApplePassbookQuirkCorrector.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\u000b\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\u000c\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\r\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\u000e\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\u000f\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\u0010\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\u0011\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\u0012\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u000e\u0010\u0013\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u001a\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u00152\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u0017H\u0002J\u000e\u0010\u001a\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u001b"
    }
    d2 = {
        "Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;",
        "",
        "tracker",
        "Lorg/ligi/passandroid/Tracker;",
        "(Lorg/ligi/passandroid/Tracker;)V",
        "getTracker",
        "()Lorg/ligi/passandroid/Tracker;",
        "careForAirBerlin",
        "",
        "pass",
        "Lorg/ligi/passandroid/model/pass/PassImpl;",
        "careForAirCanada",
        "careForCathayPacific",
        "careForRenfe",
        "careForSWISS",
        "careForTUIFlight",
        "careForUSAirways",
        "careForVirginAustralia",
        "careForWestbahn",
        "correctQuirks",
        "getPassFieldForKey",
        "Lorg/ligi/passandroid/model/pass/PassField;",
        "key",
        "",
        "getPassFieldThatMatchesLabel",
        "matcher",
        "tryToFindDate",
        "PassAndroid-3.4.5_noMapsNoAnalyticsForFDroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field private final tracker:Lorg/ligi/passandroid/Tracker;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/ligi/passandroid/Tracker;)V
    .locals 1
    .param p1, "tracker"    # Lorg/ligi/passandroid/Tracker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "tracker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->tracker:Lorg/ligi/passandroid/Tracker;

    return-void
.end method

.method private final careForAirBerlin(Lorg/ligi/passandroid/model/pass/PassImpl;)V
    .locals 12
    .param p1, "pass"    # Lorg/ligi/passandroid/model/pass/PassImpl;

    .prologue
    .line 205
    invoke-virtual {p1}, Lorg/ligi/passandroid/model/pass/PassImpl;->getDescription()Ljava/lang/String;

    move-result-object v5

    const-string v6, "boardcard"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    const-string v3, "\\b\\w{1,3}\\d{3,4}\\b"

    .line 211
    .local v3, "flightRegex":Ljava/lang/String;
    invoke-direct {p0, p1, v3}, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->getPassFieldThatMatchesLabel(Lorg/ligi/passandroid/model/pass/PassImpl;Ljava/lang/String;)Lorg/ligi/passandroid/model/pass/PassField;

    move-result-object v2

    .line 213
    .local v2, "flightField":Lorg/ligi/passandroid/model/pass/PassField;
    if-nez v2, :cond_2

    .line 214
    invoke-direct {p0, p1, v3}, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->getPassFieldThatMatchesLabel(Lorg/ligi/passandroid/model/pass/PassImpl;Ljava/lang/String;)Lorg/ligi/passandroid/model/pass/PassField;

    move-result-object v2

    .line 216
    :cond_2
    const-string v5, "seat"

    invoke-direct {p0, p1, v5}, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->getPassFieldForKey(Lorg/ligi/passandroid/model/pass/PassImpl;Ljava/lang/String;)Lorg/ligi/passandroid/model/pass/PassField;

    move-result-object v4

    .line 217
    .local v4, "seatField":Lorg/ligi/passandroid/model/pass/PassField;
    const-string v5, "boardingGroup"

    invoke-direct {p0, p1, v5}, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->getPassFieldForKey(Lorg/ligi/passandroid/model/pass/PassImpl;Ljava/lang/String;)Lorg/ligi/passandroid/model/pass/PassField;

    move-result-object v0

    .line 219
    .local v0, "boardingGroupField":Lorg/ligi/passandroid/model/pass/PassField;
    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 220
    iget-object v5, p0, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->tracker:Lorg/ligi/passandroid/Tracker;

    const-string v6, "quirk_fix"

    const-string v7, "description_replace"

    const-string v8, "air_berlin"

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v5, v6, v7, v8, v9}, Lorg/ligi/passandroid/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 221
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/ligi/passandroid/model/pass/PassField;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lorg/ligi/passandroid/model/pass/PassField;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "description":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lorg/ligi/passandroid/model/pass/PassField;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lorg/ligi/passandroid/model/pass/PassField;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/ligi/passandroid/model/pass/PassField;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/ligi/passandroid/model/pass/PassField;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 224
    invoke-virtual {p1, v1}, Lorg/ligi/passandroid/model/pass/PassImpl;->setDescription(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private final careForAirCanada(Lorg/ligi/passandroid/model/pass/PassImpl;)V
    .locals 8
    .param p1, "pass"    # Lorg/ligi/passandroid/model/pass/PassImpl;

    .prologue
    .line 122
    invoke-virtual {p1}, Lorg/ligi/passandroid/model/pass/PassImpl;->getCreator()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lorg/ligi/passandroid/model/pass/PassImpl;->getCreator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Air Canada"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v2, p0, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->tracker:Lorg/ligi/passandroid/Tracker;

    const-string v3, "quirk_fix"

    const-string v4, "description_replace"

    const-string v5, "air_canada"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/ligi/passandroid/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 128
    const-string v2, "depart"

    invoke-direct {p0, p1, v2}, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->getPassFieldForKey(Lorg/ligi/passandroid/model/pass/PassImpl;Ljava/lang/String;)Lorg/ligi/passandroid/model/pass/PassField;

    move-result-object v1

    .line 129
    .local v1, "optionalDepart":Lorg/ligi/passandroid/model/pass/PassField;
    const-string v2, "arrive"

    invoke-direct {p0, p1, v2}, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->getPassFieldForKey(Lorg/ligi/passandroid/model/pass/PassImpl;Ljava/lang/String;)Lorg/ligi/passandroid/model/pass/PassField;

    move-result-object v0

    .line 131
    .local v0, "optionalArrive":Lorg/ligi/passandroid/model/pass/PassField;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 132
    iget-object v2, p0, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->tracker:Lorg/ligi/passandroid/Tracker;

    const-string v3, "quirk_fix"

    const-string v4, "description_replace"

    const-string v5, "air_canada"

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/ligi/passandroid/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/pass/PassField;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/ligi/passandroid/model/pass/PassField;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/ligi/passandroid/model/pass/PassImpl;->setDescription(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final careForCathayPacific(Lorg/ligi/passandroid/model/pass/PassImpl;)V
    .locals 8
    .param p1, "pass"    # Lorg/ligi/passandroid/model/pass/PassImpl;

    .prologue
    .line 88
    invoke-virtual {p1}, Lorg/ligi/passandroid/model/pass/PassImpl;->getCreator()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lorg/ligi/passandroid/model/pass/PassImpl;->getCreator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Cathay Pacific"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v2, p0, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->tracker:Lorg/ligi/passandroid/Tracker;

    const-string v3, "quirk_fix"

    const-string v4, "description_replace"

    const-string v5, "cathay_pacific"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/ligi/passandroid/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 95
    const-string v2, "departure"

    invoke-direct {p0, p1, v2}, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->getPassFieldForKey(Lorg/ligi/passandroid/model/pass/PassImpl;Ljava/lang/String;)Lorg/ligi/passandroid/model/pass/PassField;

    move-result-object v1

    .line 96
    .local v1, "optionalDepart":Lorg/ligi/passandroid/model/pass/PassField;
    const-string v2, "arrival"

    invoke-direct {p0, p1, v2}, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->getPassFieldForKey(Lorg/ligi/passandroid/model/pass/PassImpl;Ljava/lang/String;)Lorg/ligi/passandroid/model/pass/PassField;

    move-result-object v0

    .line 98
    .local v0, "optionalArrive":Lorg/ligi/passandroid/model/pass/PassField;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 99
    iget-object v2, p0, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->tracker:Lorg/ligi/passandroid/Tracker;

    const-string v3, "quirk_fix"

    const-string v4, "description_replace"

    const-string v5, "cathay_pacific"

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/ligi/passandroid/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/pass/PassField;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/ligi/passandroid/model/pass/PassField;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/ligi/passandroid/model/pass/PassImpl;->setDescription(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final careForRenfe(Lorg/ligi/passandroid/model/pass/PassImpl;)V
    .locals 8
    .param p1, "pass"    # Lorg/ligi/passandroid/model/pass/PassImpl;

    .prologue
    .line 58
    invoke-virtual {p1}, Lorg/ligi/passandroid/model/pass/PassImpl;->getCreator()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lorg/ligi/passandroid/model/pass/PassImpl;->getCreator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RENFE OPERADORA"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v2, p0, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->tracker:Lorg/ligi/passandroid/Tracker;

    const-string v3, "quirk_fix"

    const-string v4, "description_replace"

    const-string v5, "RENFE OPERADORA"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/ligi/passandroid/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 63
    const-string v2, "boardingTime"

    invoke-direct {p0, p1, v2}, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->getPassFieldForKey(Lorg/ligi/passandroid/model/pass/PassImpl;Ljava/lang/String;)Lorg/ligi/passandroid/model/pass/PassField;

    move-result-object v1

    .line 64
    .local v1, "optionalDepart":Lorg/ligi/passandroid/model/pass/PassField;
    const-string v2, "destino"

    invoke-direct {p0, p1, v2}, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->getPassFieldForKey(Lorg/ligi/passandroid/model/pass/PassImpl;Ljava/lang/String;)Lorg/ligi/passandroid/model/pass/PassField;

    move-result-object v0

    .line 66
    .local v0, "optionalArrive":Lorg/ligi/passandroid/model/pass/PassField;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 67
    iget-object v2, p0, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->tracker:Lorg/ligi/passandroid/Tracker;

    const-string v3, "quirk_fix"

    const-string v4, "description_replace"

    const-string v5, "RENFE OPERADORA"

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/ligi/passandroid/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/pass/PassField;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/ligi/passandroid/model/pass/PassField;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/ligi/passandroid/model/pass/PassImpl;->setDescription(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final careForSWISS(Lorg/ligi/passandroid/model/pass/PassImpl;)V
    .locals 8
    .param p1, "pass"    # Lorg/ligi/passandroid/model/pass/PassImpl;

    .prologue
    .line 73
    invoke-virtual {p1}, Lorg/ligi/passandroid/model/pass/PassImpl;->getCreator()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lorg/ligi/passandroid/model/pass/PassImpl;->getCreator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SWISS"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v2, p0, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->tracker:Lorg/ligi/passandroid/Tracker;

    const-string v3, "quirk_fix"

    const-string v4, "description_replace"

    const-string v5, "SWISS"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/ligi/passandroid/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 78
    const-string v2, "depart"

    invoke-direct {p0, p1, v2}, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->getPassFieldForKey(Lorg/ligi/passandroid/model/pass/PassImpl;Ljava/lang/String;)Lorg/ligi/passandroid/model/pass/PassField;

    move-result-object v1

    .line 79
    .local v1, "optionalDepart":Lorg/ligi/passandroid/model/pass/PassField;
    const-string v2, "destination"

    invoke-direct {p0, p1, v2}, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->getPassFieldForKey(Lorg/ligi/passandroid/model/pass/PassImpl;Ljava/lang/String;)Lorg/ligi/passandroid/model/pass/PassField;

    move-result-object v0

    .line 81
    .local v0, "optionalArrive":Lorg/ligi/passandroid/model/pass/PassField;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 82
    iget-object v2, p0, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->tracker:Lorg/ligi/passandroid/Tracker;

    const-string v3, "quirk_fix"

    const-string v4, "description_replace"

    const-string v5, "SWISS"

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/ligi/passandroid/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/pass/PassField;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/ligi/passandroid/model/pass/PassField;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/ligi/passandroid/model/pass/PassImpl;->setDescription(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final careForTUIFlight(Lorg/ligi/passandroid/model/pass/PassImpl;)V
    .locals 10
    .param p1, "pass"    # Lorg/ligi/passandroid/model/pass/PassImpl;

    .prologue
    .line 182
    invoke-virtual {p1}, Lorg/ligi/passandroid/model/pass/PassImpl;->getDescription()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TUIfly pass"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v4, p0, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->tracker:Lorg/ligi/passandroid/Tracker;

    const-string v5, "quirk_fix"

    const-string v6, "description_replace"

    const-string v7, "tuiflight"

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v4, v5, v6, v7, v8}, Lorg/ligi/passandroid/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 188
    const-string v4, "Origin"

    invoke-direct {p0, p1, v4}, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->getPassFieldForKey(Lorg/ligi/passandroid/model/pass/PassImpl;Ljava/lang/String;)Lorg/ligi/passandroid/model/pass/PassField;

    move-result-object v2

    .line 189
    .local v2, "originField":Lorg/ligi/passandroid/model/pass/PassField;
    const-string v4, "Des"

    invoke-direct {p0, p1, v4}, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->getPassFieldForKey(Lorg/ligi/passandroid/model/pass/PassImpl;Ljava/lang/String;)Lorg/ligi/passandroid/model/pass/PassField;

    move-result-object v1

    .line 190
    .local v1, "destinationField":Lorg/ligi/passandroid/model/pass/PassField;
    const-string v4, "SeatNumber"

    invoke-direct {p0, p1, v4}, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->getPassFieldForKey(Lorg/ligi/passandroid/model/pass/PassImpl;Ljava/lang/String;)Lorg/ligi/passandroid/model/pass/PassField;

    move-result-object v3

    .line 192
    .local v3, "seatField":Lorg/ligi/passandroid/model/pass/PassField;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 193
    iget-object v4, p0, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->tracker:Lorg/ligi/passandroid/Tracker;

    const-string v5, "quirk_fix"

    const-string v6, "description_replace"

    const-string v7, "tuiflight"

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v4, v5, v6, v7, v8}, Lorg/ligi/passandroid/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/ligi/passandroid/model/pass/PassField;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/pass/PassField;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "description":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 196
    iget-object v4, p0, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->tracker:Lorg/ligi/passandroid/Tracker;

    const-string v5, "quirk_fix"

    const-string v6, "description_replace"

    const-string v7, "tuiflight"

    const-wide/16 v8, 0x2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v4, v5, v6, v7, v8}, Lorg/ligi/passandroid/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 197
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lorg/ligi/passandroid/model/pass/PassField;->getValue()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    :cond_3
    invoke-virtual {p1, v0}, Lorg/ligi/passandroid/model/pass/PassImpl;->setDescription(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private final careForUSAirways(Lorg/ligi/passandroid/model/pass/PassImpl;)V
    .locals 8
    .param p1, "pass"    # Lorg/ligi/passandroid/model/pass/PassImpl;

    .prologue
    .line 138
    invoke-virtual {p1}, Lorg/ligi/passandroid/model/pass/PassImpl;->getCreator()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lorg/ligi/passandroid/model/pass/PassImpl;->getCreator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "US Airways"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v2, p0, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->tracker:Lorg/ligi/passandroid/Tracker;

    const-string v3, "quirk_fix"

    const-string v4, "description_replace"

    const-string v5, "usairways"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/ligi/passandroid/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 144
    const-string v2, "depart"

    invoke-direct {p0, p1, v2}, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->getPassFieldForKey(Lorg/ligi/passandroid/model/pass/PassImpl;Ljava/lang/String;)Lorg/ligi/passandroid/model/pass/PassField;

    move-result-object v1

    .line 145
    .local v1, "optionalDepart":Lorg/ligi/passandroid/model/pass/PassField;
    const-string v2, "destination"

    invoke-direct {p0, p1, v2}, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->getPassFieldForKey(Lorg/ligi/passandroid/model/pass/PassImpl;Ljava/lang/String;)Lorg/ligi/passandroid/model/pass/PassField;

    move-result-object v0

    .line 147
    .local v0, "optionalArrive":Lorg/ligi/passandroid/model/pass/PassField;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 148
    iget-object v2, p0, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->tracker:Lorg/ligi/passandroid/Tracker;

    const-string v3, "quirk_fix"

    const-string v4, "description_replace"

    const-string v5, "usairways"

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/ligi/passandroid/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/pass/PassField;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/ligi/passandroid/model/pass/PassField;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/ligi/passandroid/model/pass/PassImpl;->setDescription(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final careForVirginAustralia(Lorg/ligi/passandroid/model/pass/PassImpl;)V
    .locals 8
    .param p1, "pass"    # Lorg/ligi/passandroid/model/pass/PassImpl;

    .prologue
    .line 106
    invoke-virtual {p1}, Lorg/ligi/passandroid/model/pass/PassImpl;->getCreator()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lorg/ligi/passandroid/model/pass/PassImpl;->getCreator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Virgin Australia"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v2, p0, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->tracker:Lorg/ligi/passandroid/Tracker;

    const-string v3, "quirk_fix"

    const-string v4, "description_replace"

    const-string v5, "virgin_australia"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/ligi/passandroid/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 112
    const-string v2, "origin"

    invoke-direct {p0, p1, v2}, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->getPassFieldForKey(Lorg/ligi/passandroid/model/pass/PassImpl;Ljava/lang/String;)Lorg/ligi/passandroid/model/pass/PassField;

    move-result-object v1

    .line 113
    .local v1, "optionalDepart":Lorg/ligi/passandroid/model/pass/PassField;
    const-string v2, "destination"

    invoke-direct {p0, p1, v2}, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->getPassFieldForKey(Lorg/ligi/passandroid/model/pass/PassImpl;Ljava/lang/String;)Lorg/ligi/passandroid/model/pass/PassField;

    move-result-object v0

    .line 115
    .local v0, "optionalArrive":Lorg/ligi/passandroid/model/pass/PassField;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 116
    iget-object v2, p0, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->tracker:Lorg/ligi/passandroid/Tracker;

    const-string v3, "quirk_fix"

    const-string v4, "description_replace"

    const-string v5, "virgin_australia"

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/ligi/passandroid/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/pass/PassField;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/ligi/passandroid/model/pass/PassField;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/ligi/passandroid/model/pass/PassImpl;->setDescription(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final careForWestbahn(Lorg/ligi/passandroid/model/pass/PassImpl;)V
    .locals 10
    .param p1, "pass"    # Lorg/ligi/passandroid/model/pass/PassImpl;

    .prologue
    .line 154
    invoke-virtual {p1}, Lorg/ligi/passandroid/model/pass/PassImpl;->getCalendarTimespan()Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Lorg/ligi/passandroid/model/pass/PassImpl;->getCreator()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    :goto_0
    const-string v5, "WESTbahn"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 179
    :cond_0
    :goto_1
    return-void

    .line 154
    :cond_1
    const-string v4, ""

    goto :goto_0

    .line 158
    :cond_2
    iget-object v4, p0, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->tracker:Lorg/ligi/passandroid/Tracker;

    const-string v5, "quirk_fix"

    const-string v6, "description_replace"

    const-string v7, "westbahn"

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v4, v5, v6, v7, v8}, Lorg/ligi/passandroid/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 160
    const-string v4, "from"

    invoke-direct {p0, p1, v4}, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->getPassFieldForKey(Lorg/ligi/passandroid/model/pass/PassImpl;Ljava/lang/String;)Lorg/ligi/passandroid/model/pass/PassField;

    move-result-object v2

    .line 161
    .local v2, "originField":Lorg/ligi/passandroid/model/pass/PassField;
    const-string v4, "to"

    invoke-direct {p0, p1, v4}, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->getPassFieldForKey(Lorg/ligi/passandroid/model/pass/PassImpl;Ljava/lang/String;)Lorg/ligi/passandroid/model/pass/PassField;

    move-result-object v1

    .line 163
    .local v1, "destinationField":Lorg/ligi/passandroid/model/pass/PassField;
    const-string v0, "WESTbahn"

    .line 165
    .local v0, "description":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 166
    invoke-virtual {v2}, Lorg/ligi/passandroid/model/pass/PassField;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 168
    iget-object v4, p0, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->tracker:Lorg/ligi/passandroid/Tracker;

    const-string v5, "quirk_fix"

    const-string v6, "description_replace"

    const-string v7, "westbahn"

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v4, v5, v6, v7, v8}, Lorg/ligi/passandroid/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 169
    move-object v0, v3

    .line 173
    .end local v3    # "value":Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_5

    .line 174
    iget-object v4, p0, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->tracker:Lorg/ligi/passandroid/Tracker;

    const-string v5, "quirk_fix"

    const-string v6, "description_replace"

    const-string v7, "westbahn"

    const-wide/16 v8, 0x2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v4, v5, v6, v7, v8}, Lorg/ligi/passandroid/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/pass/PassField;->getValue()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    :cond_5
    invoke-virtual {p1, v0}, Lorg/ligi/passandroid/model/pass/PassImpl;->setDescription(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private final getPassFieldForKey(Lorg/ligi/passandroid/model/pass/PassImpl;Ljava/lang/String;)Lorg/ligi/passandroid/model/pass/PassField;
    .locals 5
    .param p1, "pass"    # Lorg/ligi/passandroid/model/pass/PassImpl;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-virtual {p1}, Lorg/ligi/passandroid/model/pass/PassImpl;->getFields()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 238
    .local v0, "$receiver$iv":Ljava/lang/Iterable;
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "element$iv":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lorg/ligi/passandroid/model/pass/PassField;

    .line 47
    .local v2, "it":Lorg/ligi/passandroid/model/pass/PassField;
    invoke-virtual {v2}, Lorg/ligi/passandroid/model/pass/PassField;->getKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lorg/ligi/passandroid/model/pass/PassField;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_0

    move-object v3, v1

    .line 239
    .end local v1    # "element$iv":Ljava/lang/Object;
    .end local v2    # "it":Lorg/ligi/passandroid/model/pass/PassField;
    :goto_1
    check-cast v3, Lorg/ligi/passandroid/model/pass/PassField;

    return-object v3

    .line 47
    .restart local v1    # "element$iv":Ljava/lang/Object;
    .restart local v2    # "it":Lorg/ligi/passandroid/model/pass/PassField;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 239
    .end local v1    # "element$iv":Ljava/lang/Object;
    .end local v2    # "it":Lorg/ligi/passandroid/model/pass/PassField;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private final getPassFieldThatMatchesLabel(Lorg/ligi/passandroid/model/pass/PassImpl;Ljava/lang/String;)Lorg/ligi/passandroid/model/pass/PassField;
    .locals 6
    .param p1, "pass"    # Lorg/ligi/passandroid/model/pass/PassImpl;
    .param p2, "matcher"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-virtual {p1}, Lorg/ligi/passandroid/model/pass/PassImpl;->getFields()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 240
    .local v0, "$receiver$iv":Ljava/lang/Iterable;
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "element$iv":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lorg/ligi/passandroid/model/pass/PassField;

    .line 52
    .local v2, "it":Lorg/ligi/passandroid/model/pass/PassField;
    invoke-virtual {v2}, Lorg/ligi/passandroid/model/pass/PassField;->getLabel()Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "label":Ljava/lang/String;
    if-eqz v3, :cond_1

    check-cast v3, Ljava/lang/CharSequence;

    .end local v3    # "label":Ljava/lang/String;
    new-instance v4, Lkotlin/text/Regex;

    invoke-direct {v4, p2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    nop

    if-eqz v4, :cond_0

    move-object v4, v1

    .line 241
    .end local v1    # "element$iv":Ljava/lang/Object;
    .end local v2    # "it":Lorg/ligi/passandroid/model/pass/PassField;
    :goto_1
    check-cast v4, Lorg/ligi/passandroid/model/pass/PassField;

    return-object v4

    .line 53
    .restart local v1    # "element$iv":Ljava/lang/Object;
    .restart local v2    # "it":Lorg/ligi/passandroid/model/pass/PassField;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 241
    .end local v1    # "element$iv":Ljava/lang/Object;
    .end local v2    # "it":Lorg/ligi/passandroid/model/pass/PassField;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final correctQuirks(Lorg/ligi/passandroid/model/pass/PassImpl;)V
    .locals 1
    .param p1, "pass"    # Lorg/ligi/passandroid/model/pass/PassImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "pass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1}, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->careForTUIFlight(Lorg/ligi/passandroid/model/pass/PassImpl;)V

    .line 14
    invoke-direct {p0, p1}, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->careForAirBerlin(Lorg/ligi/passandroid/model/pass/PassImpl;)V

    .line 15
    invoke-direct {p0, p1}, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->careForWestbahn(Lorg/ligi/passandroid/model/pass/PassImpl;)V

    .line 16
    invoke-direct {p0, p1}, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->careForAirCanada(Lorg/ligi/passandroid/model/pass/PassImpl;)V

    .line 17
    invoke-direct {p0, p1}, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->careForUSAirways(Lorg/ligi/passandroid/model/pass/PassImpl;)V

    .line 18
    invoke-direct {p0, p1}, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->careForVirginAustralia(Lorg/ligi/passandroid/model/pass/PassImpl;)V

    .line 19
    invoke-direct {p0, p1}, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->careForCathayPacific(Lorg/ligi/passandroid/model/pass/PassImpl;)V

    .line 20
    invoke-direct {p0, p1}, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->careForSWISS(Lorg/ligi/passandroid/model/pass/PassImpl;)V

    .line 21
    invoke-direct {p0, p1}, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->careForRenfe(Lorg/ligi/passandroid/model/pass/PassImpl;)V

    .line 24
    invoke-virtual {p0, p1}, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->tryToFindDate(Lorg/ligi/passandroid/model/pass/PassImpl;)V

    .line 25
    return-void
.end method

.method public final getTracker()Lorg/ligi/passandroid/Tracker;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 9
    iget-object v0, p0, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->tracker:Lorg/ligi/passandroid/Tracker;

    return-object v0
.end method

.method public final tryToFindDate(Lorg/ligi/passandroid/model/pass/PassImpl;)V
    .locals 18
    .param p1, "pass"    # Lorg/ligi/passandroid/model/pass/PassImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v2, "pass"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual/range {p1 .. p1}, Lorg/ligi/passandroid/model/pass/PassImpl;->getCalendarTimespan()Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;

    move-result-object v2

    if-nez v2, :cond_4

    .line 30
    invoke-virtual/range {p1 .. p1}, Lorg/ligi/passandroid/model/pass/PassImpl;->getFields()Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .line 229
    .local v8, "$receiver$iv":Ljava/lang/Iterable;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    check-cast v9, Ljava/util/Collection;

    .line 230
    .local v9, "destination$iv$iv":Ljava/util/Collection;
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .local v12, "element$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Lorg/ligi/passandroid/model/pass/PassField;

    .line 30
    .local v13, "it":Lorg/ligi/passandroid/model/pass/PassField;
    const-string v4, "date"

    invoke-virtual {v13}, Lorg/ligi/passandroid/model/pass/PassField;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v9, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 231
    .end local v12    # "element$iv$iv":Ljava/lang/Object;
    .end local v13    # "it":Lorg/ligi/passandroid/model/pass/PassField;
    :cond_1
    check-cast v9, Ljava/util/List;

    .end local v9    # "destination$iv$iv":Ljava/util/Collection;
    move-object v2, v9

    check-cast v2, Ljava/lang/Iterable;

    .line 30
    nop

    .line 232
    new-instance v9, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v9, Ljava/util/Collection;

    .line 233
    .restart local v9    # "destination$iv$iv":Ljava/util/Collection;
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 234
    .local v14, "item$iv$iv":Ljava/lang/Object;
    check-cast v14, Lorg/ligi/passandroid/model/pass/PassField;

    .line 31
    .end local v14    # "item$iv$iv":Ljava/lang/Object;
    nop

    .line 32
    :try_start_0
    invoke-virtual {v14}, Lorg/ligi/passandroid/model/pass/PassField;->getValue()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lorg/threeten/bp/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Lorg/threeten/bp/ZonedDateTime;
    :try_end_0
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 35
    :goto_2
    invoke-interface {v9, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 33
    :catch_0
    move-exception v10

    .line 34
    .local v10, "e":Lorg/threeten/bp/DateTimeException;
    const/4 v2, 0x0

    goto :goto_2

    .line 235
    .end local v10    # "e":Lorg/threeten/bp/DateTimeException;
    :cond_2
    check-cast v9, Ljava/util/List;

    .end local v9    # "destination$iv$iv":Ljava/util/Collection;
    check-cast v9, Ljava/lang/Iterable;

    .line 36
    nop

    .line 236
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element$iv":Ljava/lang/Object;
    move-object v13, v11

    check-cast v13, Lorg/threeten/bp/ZonedDateTime;

    .line 36
    .local v13, "it":Lorg/threeten/bp/ZonedDateTime;
    if-eqz v13, :cond_5

    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_3

    move-object v3, v11

    .line 30
    .end local v11    # "element$iv":Ljava/lang/Object;
    .end local v13    # "it":Lorg/threeten/bp/ZonedDateTime;
    :goto_4
    check-cast v3, Lorg/threeten/bp/ZonedDateTime;

    .line 38
    .local v3, "foundDate":Lorg/threeten/bp/ZonedDateTime;
    if-eqz v3, :cond_4

    .line 39
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->tracker:Lorg/ligi/passandroid/Tracker;

    const-string v4, "quirk_fix"

    const-string v5, "find_date"

    const-string v6, "find_date"

    const-wide/16 v16, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v2, v4, v5, v6, v7}, Lorg/ligi/passandroid/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 40
    new-instance v2, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;-><init>(Lorg/threeten/bp/ZonedDateTime;Lorg/threeten/bp/ZonedDateTime;Lorg/ligi/passandroid/model/pass/PassImpl$TimeRepeat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/ligi/passandroid/model/pass/PassImpl;->setCalendarTimespan(Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;)V

    .line 44
    .end local v3    # "foundDate":Lorg/threeten/bp/ZonedDateTime;
    .end local v8    # "$receiver$iv":Ljava/lang/Iterable;
    :cond_4
    return-void

    .line 36
    .restart local v8    # "$receiver$iv":Ljava/lang/Iterable;
    .restart local v11    # "element$iv":Ljava/lang/Object;
    .restart local v13    # "it":Lorg/threeten/bp/ZonedDateTime;
    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    .line 237
    .end local v11    # "element$iv":Ljava/lang/Object;
    .end local v13    # "it":Lorg/threeten/bp/ZonedDateTime;
    :cond_6
    const/4 v3, 0x0

    goto :goto_4
.end method
