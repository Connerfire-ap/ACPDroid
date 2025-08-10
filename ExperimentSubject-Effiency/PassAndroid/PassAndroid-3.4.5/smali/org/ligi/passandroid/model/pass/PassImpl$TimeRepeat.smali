.class public final Lorg/ligi/passandroid/model/pass/PassImpl$TimeRepeat;
.super Ljava/lang/Object;
.source "PassImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ligi/passandroid/model/pass/PassImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimeRepeat"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lorg/ligi/passandroid/model/pass/PassImpl$TimeRepeat;",
        "",
        "offset",
        "",
        "count",
        "(II)V",
        "getCount",
        "()I",
        "getOffset",
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
.field private final count:I

.field private final offset:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/ligi/passandroid/model/pass/PassImpl$TimeRepeat;->offset:I

    iput p2, p0, Lorg/ligi/passandroid/model/pass/PassImpl$TimeRepeat;->count:I

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lorg/ligi/passandroid/model/pass/PassImpl$TimeRepeat;->count:I

    return v0
.end method

.method public final getOffset()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lorg/ligi/passandroid/model/pass/PassImpl$TimeRepeat;->offset:I

    return v0
.end method
