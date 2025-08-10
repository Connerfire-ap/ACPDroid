.class public final Lorg/ligi/passandroid/ui/FileUnzipControllerSpec;
.super Lorg/ligi/passandroid/ui/UnzipControllerSpec;
.source "FileUnzipControllerSpec.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lorg/ligi/passandroid/ui/FileUnzipControllerSpec;",
        "Lorg/ligi/passandroid/ui/UnzipControllerSpec;",
        "zipFileString",
        "",
        "spec",
        "Lorg/ligi/passandroid/ui/UnzipPassController$InputStreamUnzipControllerSpec;",
        "(Ljava/lang/String;Lorg/ligi/passandroid/ui/UnzipPassController$InputStreamUnzipControllerSpec;)V",
        "source",
        "getSource",
        "()Ljava/lang/String;",
        "getZipFileString",
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
.field private final source:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final zipFileString:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/ligi/passandroid/ui/UnzipPassController$InputStreamUnzipControllerSpec;)V
    .locals 6
    .param p1, "zipFileString"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "spec"    # Lorg/ligi/passandroid/ui/UnzipPassController$InputStreamUnzipControllerSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "zipFileString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spec"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Lorg/ligi/passandroid/ui/UnzipPassController$InputStreamUnzipControllerSpec;->getTargetPath()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p2}, Lorg/ligi/passandroid/ui/UnzipPassController$InputStreamUnzipControllerSpec;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2}, Lorg/ligi/passandroid/ui/UnzipPassController$InputStreamUnzipControllerSpec;->getPassStore()Lorg/ligi/passandroid/model/PassStore;

    move-result-object v3

    invoke-virtual {p2}, Lorg/ligi/passandroid/ui/UnzipPassController$InputStreamUnzipControllerSpec;->getOnSuccessCallback()Lorg/ligi/passandroid/ui/UnzipPassController$SuccessCallback;

    move-result-object v4

    invoke-virtual {p2}, Lorg/ligi/passandroid/ui/UnzipPassController$InputStreamUnzipControllerSpec;->getFailCallback()Lorg/ligi/passandroid/ui/UnzipPassController$FailCallback;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/ligi/passandroid/ui/UnzipControllerSpec;-><init>(Ljava/io/File;Landroid/content/Context;Lorg/ligi/passandroid/model/PassStore;Lorg/ligi/passandroid/ui/UnzipPassController$SuccessCallback;Lorg/ligi/passandroid/ui/UnzipPassController$FailCallback;)V

    iput-object p1, p0, Lorg/ligi/passandroid/ui/FileUnzipControllerSpec;->zipFileString:Ljava/lang/String;

    .line 4
    invoke-virtual {p2}, Lorg/ligi/passandroid/ui/UnzipPassController$InputStreamUnzipControllerSpec;->getInputStreamWithSource$PassAndroid_3_4_5_noMapsNoAnalyticsForFDroidDebug()Lorg/ligi/passandroid/model/InputStreamWithSource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ligi/passandroid/model/InputStreamWithSource;->getSource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ligi/passandroid/ui/FileUnzipControllerSpec;->source:Ljava/lang/String;

    .line 7
    invoke-virtual {p2}, Lorg/ligi/passandroid/ui/UnzipPassController$InputStreamUnzipControllerSpec;->getOverwrite()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/ligi/passandroid/ui/FileUnzipControllerSpec;->setOverwrite(Z)V

    return-void
.end method


# virtual methods
.method public final getSource()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 4
    iget-object v0, p0, Lorg/ligi/passandroid/ui/FileUnzipControllerSpec;->source:Ljava/lang/String;

    return-object v0
.end method

.method public final getZipFileString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 3
    iget-object v0, p0, Lorg/ligi/passandroid/ui/FileUnzipControllerSpec;->zipFileString:Ljava/lang/String;

    return-object v0
.end method
