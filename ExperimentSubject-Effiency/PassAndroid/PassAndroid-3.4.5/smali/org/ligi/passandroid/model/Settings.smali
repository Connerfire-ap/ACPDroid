.class public interface abstract Lorg/ligi/passandroid/model/Settings;
.super Ljava/lang/Object;
.source "Settings.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0006\u001a\u00020\u0007H&J\u0008\u0010\u0008\u001a\u00020\tH&J\u0008\u0010\n\u001a\u00020\u0007H&J\u0008\u0010\u000b\u001a\u00020\u0003H&J\u0008\u0010\u000c\u001a\u00020\u0003H&\u00a8\u0006\r"
    }
    d2 = {
        "Lorg/ligi/passandroid/model/Settings;",
        "",
        "doTraceDroidEmailSend",
        "",
        "getNightMode",
        "",
        "getPassesDir",
        "Ljava/io/File;",
        "getSortOrder",
        "Lorg/ligi/passandroid/model/comparator/PassSortOrder;",
        "getStateDir",
        "isAutomaticLightEnabled",
        "isCondensedModeEnabled",
        "PassAndroid-3.4.5_noMapsNoAnalyticsForFDroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# virtual methods
.method public abstract doTraceDroidEmailSend()Z
.end method

.method public abstract getNightMode()I
.end method

.method public abstract getPassesDir()Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getSortOrder()Lorg/ligi/passandroid/model/comparator/PassSortOrder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getStateDir()Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract isAutomaticLightEnabled()Z
.end method

.method public abstract isCondensedModeEnabled()Z
.end method
