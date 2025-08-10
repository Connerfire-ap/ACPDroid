.class public final Lorg/ligi/passandroid/events/PassStoreChangeEvent;
.super Ljava/lang/Object;
.source "PassStoreChangeEvent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lorg/ligi/passandroid/events/PassStoreChangeEvent;",
        "",
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


# static fields
.field public static final INSTANCE:Lorg/ligi/passandroid/events/PassStoreChangeEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3
    new-instance v0, Lorg/ligi/passandroid/events/PassStoreChangeEvent;

    invoke-direct {v0}, Lorg/ligi/passandroid/events/PassStoreChangeEvent;-><init>()V

    sput-object v0, Lorg/ligi/passandroid/events/PassStoreChangeEvent;->INSTANCE:Lorg/ligi/passandroid/events/PassStoreChangeEvent;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
