.class public final Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$Companion;
.super Ljava/lang/Object;
.source "FieldsEditFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nR\u0014\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000b"
    }
    d2 = {
        "Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$Companion;",
        "",
        "()V",
        "ARGUMENT_KEY",
        "",
        "getARGUMENT_KEY",
        "()Ljava/lang/String;",
        "create",
        "Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;",
        "primary",
        "",
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
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getARGUMENT_KEY$p(Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$Companion;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$Companion;->getARGUMENT_KEY()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getARGUMENT_KEY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    # getter for: Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;->ARGUMENT_KEY:Ljava/lang/String;
    invoke-static {}, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;->access$getARGUMENT_KEY$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final create(Z)Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;
    .locals 3
    .param p1, "primary"    # Z
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 80
    new-instance v1, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;

    invoke-direct {v1}, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;-><init>()V

    .line 81
    .local v1, "fieldsEditFragment":Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 82
    .local v0, "args":Landroid/os/Bundle;
    check-cast p0, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$Companion;

    .end local p0    # "this":Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$Companion;
    invoke-direct {p0}, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$Companion;->getARGUMENT_KEY()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83
    invoke-virtual {v1, v0}, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;->setArguments(Landroid/os/Bundle;)V

    .line 84
    return-object v1
.end method
