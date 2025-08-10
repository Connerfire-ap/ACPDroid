.class public final Lorg/ligi/passandroid/model/pass/PassLocation;
.super Ljava/lang/Object;
.source "PassLocation.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0012\u001a\u00020\rJ\u0010\u0010\u0013\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0014\u001a\u00020\u0015R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0016"
    }
    d2 = {
        "Lorg/ligi/passandroid/model/pass/PassLocation;",
        "",
        "()V",
        "lat",
        "",
        "getLat",
        "()D",
        "setLat",
        "(D)V",
        "lon",
        "getLon",
        "setLon",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "setName",
        "(Ljava/lang/String;)V",
        "getCommaSeparated",
        "getNameWithFallback",
        "pass",
        "Lorg/ligi/passandroid/model/pass/Pass;",
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
.field private lat:D

.field private lon:D

.field private name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCommaSeparated()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/ligi/passandroid/model/pass/PassLocation;->lat:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/ligi/passandroid/model/pass/PassLocation;->lon:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLat()D
    .locals 2

    .prologue
    .line 7
    iget-wide v0, p0, Lorg/ligi/passandroid/model/pass/PassLocation;->lat:D

    return-wide v0
.end method

.method public final getLon()D
    .locals 2

    .prologue
    .line 8
    iget-wide v0, p0, Lorg/ligi/passandroid/model/pass/PassLocation;->lon:D

    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 5
    iget-object v0, p0, Lorg/ligi/passandroid/model/pass/PassLocation;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getNameWithFallback(Lorg/ligi/passandroid/model/pass/Pass;)Ljava/lang/String;
    .locals 1
    .param p1, "pass"    # Lorg/ligi/passandroid/model/pass/Pass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v0, "pass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lorg/ligi/passandroid/model/pass/PassLocation;->name:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 12
    invoke-interface {p1}, Lorg/ligi/passandroid/model/pass/Pass;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 10
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lorg/ligi/passandroid/model/pass/PassLocation;->name:Ljava/lang/String;

    goto :goto_1
.end method

.method public final setLat(D)V
    .locals 1
    .param p1, "<set-?>"    # D

    .prologue
    .line 7
    iput-wide p1, p0, Lorg/ligi/passandroid/model/pass/PassLocation;->lat:D

    return-void
.end method

.method public final setLon(D)V
    .locals 1
    .param p1, "<set-?>"    # D

    .prologue
    .line 8
    iput-wide p1, p0, Lorg/ligi/passandroid/model/pass/PassLocation;->lon:D

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 5
    iput-object p1, p0, Lorg/ligi/passandroid/model/pass/PassLocation;->name:Ljava/lang/String;

    return-void
.end method
