.class final Lcom/github/salomonbrys/kodein/UNINITIALIZED_VALUE;
.super Ljava/lang/Object;
.source "InjectedProperty.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/UNINITIALIZED_VALUE;",
        "",
        "()V",
        "kodein-core_main"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/github/salomonbrys/kodein/UNINITIALIZED_VALUE;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/github/salomonbrys/kodein/UNINITIALIZED_VALUE;

    invoke-direct {v0}, Lcom/github/salomonbrys/kodein/UNINITIALIZED_VALUE;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p0, Lcom/github/salomonbrys/kodein/UNINITIALIZED_VALUE;

    .end local p0    # "this":Lcom/github/salomonbrys/kodein/UNINITIALIZED_VALUE;
    sput-object p0, Lcom/github/salomonbrys/kodein/UNINITIALIZED_VALUE;->INSTANCE:Lcom/github/salomonbrys/kodein/UNINITIALIZED_VALUE;

    return-void
.end method
