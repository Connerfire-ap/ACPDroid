.class public Lorg/openobservatory/measurement_kit/swig/mk_swig_commonJNI;
.super Ljava/lang/Object;
.source "mk_swig_commonJNI.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native Error_as_bool(JLorg/openobservatory/measurement_kit/swig/Error;)Z
.end method

.method public static final native Error_code(JLorg/openobservatory/measurement_kit/swig/Error;)I
.end method

.method public static final native Error_reason(JLorg/openobservatory/measurement_kit/swig/Error;)Ljava/lang/String;
.end method

.method public static final native Error_set_code(JLorg/openobservatory/measurement_kit/swig/Error;I)V
.end method

.method public static final native Error_set_reason(JLorg/openobservatory/measurement_kit/swig/Error;Ljava/lang/String;)V
.end method

.method public static final native Version_version()Ljava/lang/String;
.end method

.method public static final native delete_Error(J)V
.end method

.method public static final native delete_Version(J)V
.end method

.method public static final native new_Error()J
.end method
