.class public interface abstract Lorg/restlet/security/Verifier;
.super Ljava/lang/Object;
.source "Verifier.java"


# static fields
.field public static final RESULT_INVALID:I = -0x1

.field public static final RESULT_MISSING:I = 0x0

.field public static final RESULT_STALE:I = 0x1

.field public static final RESULT_UNKNOWN:I = 0x5

.field public static final RESULT_UNSUPPORTED:I = 0x3

.field public static final RESULT_VALID:I = 0x4


# virtual methods
.method public abstract verify(Lorg/restlet/Request;Lorg/restlet/Response;)I
.end method
