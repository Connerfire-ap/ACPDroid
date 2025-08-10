.class public final Lorg/ligi/passandroid/ui/PassExporter$export$1;
.super Lnet/lingala/zip4j/model/ZipParameters;
.source "PassExporter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/PassExporter;->export()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\r\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "org/ligi/passandroid/ui/PassExporter$export$1",
        "Lnet/lingala/zip4j/model/ZipParameters;",
        "()V",
        "PassAndroid-3.4.5_noMapsNoAnalyticsForFDroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lnet/lingala/zip4j/model/ZipParameters;-><init>()V

    .line 22
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/ligi/passandroid/ui/PassExporter$export$1;->setIncludeRootFolder(Z)V

    .line 23
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/ligi/passandroid/ui/PassExporter$export$1;->setCompressionMethod(I)V

    .line 24
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/ligi/passandroid/ui/PassExporter$export$1;->setCompressionLevel(I)V

    return-void
.end method
