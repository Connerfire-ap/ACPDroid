.class public final Lorg/ligi/passandroid/ui/PassListFragment$Companion;
.super Ljava/lang/Object;
.source "PassListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ligi/passandroid/ui/PassListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0004R\u0014\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lorg/ligi/passandroid/ui/PassListFragment$Companion;",
        "",
        "()V",
        "BUNDLE_KEY_TOPIC",
        "",
        "getBUNDLE_KEY_TOPIC",
        "()Ljava/lang/String;",
        "newInstance",
        "Lorg/ligi/passandroid/ui/PassListFragment;",
        "topic",
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
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 95
    invoke-direct {p0}, Lorg/ligi/passandroid/ui/PassListFragment$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getBUNDLE_KEY_TOPIC$p(Lorg/ligi/passandroid/ui/PassListFragment$Companion;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lorg/ligi/passandroid/ui/PassListFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0}, Lorg/ligi/passandroid/ui/PassListFragment$Companion;->getBUNDLE_KEY_TOPIC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getBUNDLE_KEY_TOPIC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    # getter for: Lorg/ligi/passandroid/ui/PassListFragment;->BUNDLE_KEY_TOPIC:Ljava/lang/String;
    invoke-static {}, Lorg/ligi/passandroid/ui/PassListFragment;->access$getBUNDLE_KEY_TOPIC$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final newInstance(Ljava/lang/String;)Lorg/ligi/passandroid/ui/PassListFragment;
    .locals 3
    .param p1, "topic"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v1, "topic"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    new-instance v0, Lorg/ligi/passandroid/ui/PassListFragment;

    invoke-direct {v0}, Lorg/ligi/passandroid/ui/PassListFragment;-><init>()V

    .line 100
    .local v0, "$receiver":Lorg/ligi/passandroid/ui/PassListFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lorg/ligi/passandroid/ui/PassListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {v0}, Lorg/ligi/passandroid/ui/PassListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lorg/ligi/passandroid/ui/PassListFragment;->Companion:Lorg/ligi/passandroid/ui/PassListFragment$Companion;

    invoke-direct {v2}, Lorg/ligi/passandroid/ui/PassListFragment$Companion;->getBUNDLE_KEY_TOPIC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    nop

    return-object v0
.end method
