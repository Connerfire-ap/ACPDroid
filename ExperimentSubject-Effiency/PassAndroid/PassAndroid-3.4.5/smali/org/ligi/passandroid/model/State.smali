.class public final Lorg/ligi/passandroid/model/State;
.super Lcom/chibatching/kotpref/KotprefModel;
.source "State.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R+\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR+\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u000c8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u000b\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Lorg/ligi/passandroid/model/State;",
        "Lcom/chibatching/kotpref/KotprefModel;",
        "()V",
        "<set-?>",
        "",
        "lastSelectedPassUUID",
        "getLastSelectedPassUUID",
        "()Ljava/lang/String;",
        "setLastSelectedPassUUID",
        "(Ljava/lang/String;)V",
        "lastSelectedPassUUID$delegate",
        "Lkotlin/properties/ReadWriteProperty;",
        "",
        "lastSelectedTab",
        "getLastSelectedTab",
        "()I",
        "setLastSelectedTab",
        "(I)V",
        "lastSelectedTab$delegate",
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
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final INSTANCE:Lorg/ligi/passandroid/model/State;

.field private static final lastSelectedPassUUID$delegate:Lkotlin/properties/ReadWriteProperty;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final lastSelectedTab$delegate:Lkotlin/properties/ReadWriteProperty;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x2

    new-array v1, v0, [Lkotlin/reflect/KProperty;

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lorg/ligi/passandroid/model/State;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "lastSelectedTab"

    const-string v4, "getLastSelectedTab()I"

    invoke-direct {v0, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v7

    const/4 v2, 0x1

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v3, Lorg/ligi/passandroid/model/State;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "lastSelectedPassUUID"

    const-string v5, "getLastSelectedPassUUID()Ljava/lang/String;"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    sput-object v1, Lorg/ligi/passandroid/model/State;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 5
    new-instance v0, Lorg/ligi/passandroid/model/State;

    invoke-direct {v0}, Lorg/ligi/passandroid/model/State;-><init>()V

    sput-object v0, Lorg/ligi/passandroid/model/State;->INSTANCE:Lorg/ligi/passandroid/model/State;

    .line 7
    invoke-static {v0, v7, v6, v8, v6}, Lcom/chibatching/kotpref/KotprefModel;->intPref$default(Lcom/chibatching/kotpref/KotprefModel;ILjava/lang/String;ILjava/lang/Object;)Lkotlin/properties/ReadWriteProperty;

    move-result-object v1

    sput-object v1, Lorg/ligi/passandroid/model/State;->lastSelectedTab$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 8
    invoke-static {v0, v6, v6, v8, v6}, Lcom/chibatching/kotpref/KotprefModel;->stringPref$default(Lcom/chibatching/kotpref/KotprefModel;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    sput-object v0, Lorg/ligi/passandroid/model/State;->lastSelectedPassUUID$delegate:Lkotlin/properties/ReadWriteProperty;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/chibatching/kotpref/KotprefModel;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLastSelectedPassUUID()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    sget-object v0, Lorg/ligi/passandroid/model/State;->lastSelectedPassUUID$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/ligi/passandroid/model/State;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getLastSelectedTab()I
    .locals 3

    .prologue
    sget-object v0, Lorg/ligi/passandroid/model/State;->lastSelectedTab$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/ligi/passandroid/model/State;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final setLastSelectedPassUUID(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lorg/ligi/passandroid/model/State;->lastSelectedPassUUID$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/ligi/passandroid/model/State;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setLastSelectedTab(I)V
    .locals 3
    .param p1, "<set-?>"    # I

    .prologue
    sget-object v0, Lorg/ligi/passandroid/model/State;->lastSelectedTab$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lorg/ligi/passandroid/model/State;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method
